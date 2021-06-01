<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product;
use Illuminate\Http\Request;
use GroceryCrud\Core\GroceryCrud;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class BackEndController extends Controller
{
    private function _getDatabaseConnection() {
        $databaseConnection = config('database.default');
        $databaseConfig = config('database.connections.' . $databaseConnection);


        return [
            'adapter' => [
                'driver' => 'Pdo_Mysql',
                'database' => $databaseConfig['database'],
                'username' => $databaseConfig['username'],
                'password' => $databaseConfig['password'],
                'charset' => 'utf8'
            ]
        ];
    }

    private function _getGroceryCrudEnterprise() {
        $database = $this->_getDatabaseConnection();
        $config = config('grocerycrud');

        $crud = new GroceryCrud($config, $database);

        return $crud;
    }

    private function _show_output($output, $title = '') {
        if ($output->isJSONResponse) {
            return response($output->output, 200)
                  ->header('Content-Type', 'application/json')
                  ->header('charset', 'utf-8');
        }

        $css_files = $output->css_files;
        $js_files = $output->js_files;
        $output = $output->output;

        return view('grocery', [
            'output' => $output,
            'css_files' => $css_files,
            'js_files' => $js_files,
            'title' => $title
        ]);
    }

    public function category()
    {
        $title = "Categories";

        $crud = $this->_getGroceryCrudEnterprise();
        $crud->setTable('categories');
        $crud->setSkin('bootstrap-v4');
        $crud->setSubject('Category', 'Categories');
        $crud->columns(['name', 'image']);
        $crud->addFields(['name', 'content', 'image']);
        $crud->requiredFields(['name', 'content', 'image']);
        $crud->editFields(['name', 'content', 'image']);
        $crud->setFieldUpload('image', 'storage', '../storage');
        $crud->setTexteditor(['content']);
        $crud->callbackAfterInsert(function ($s) {
            $data = Category::find($s->insertId);
            $data->slug = Str::slug($data->name);
            $data->save();
            return $s;
        });
        $crud->callbackAfterUpdate(function ($s) {
            $data = Category::find($s->primaryKeyValue);
            $data->slug = Str::slug($data->name);
            $data->save();
            return $s;
        });
        $output = $crud->render();

        return $this->_show_output($output, $title);
    }

    public function product()
    {
        $title = "Products";

        $crud = $this->_getGroceryCrudEnterprise();
        $crud->setTable('products');
        $crud->setSkin('bootstrap-v4');
        $crud->setSubject('Product', 'Products');
        $crud->columns(['category_id', 'name', 'content', 'image']);
        $crud->addFields(['category_id', 'name', 'content', 'image']);
        $crud->requiredFields(['category_id', 'name', 'content', 'image']);
        $crud->editFields(['category_id', 'name', 'content', 'image']);
        $crud->setFieldUpload('image', 'storage', '../storage');
        $crud->setRelation('category_id', 'categories', 'name');
        $crud->setTexteditor(['content']);
        $crud->callbackAfterInsert(function ($s) {
            $data = Product::find($s->insertId);
            $data->slug = Str::slug($data->name);
            $data->user_id = Auth::id();
            $data->save();
            return $s;
        });
        $crud->callbackAfterUpdate(function ($s) {
            $data = Product::find($s->primaryKeyValue);
            $data->slug = Str::slug($data->name);
            $data->save();
            return $s;
        });
        $crud->displayAs([
            'category_id' => 'Category'
        ]);
        $output = $crud->render();

        return $this->_show_output($output, $title);
    }

    public function comment()
    {
        $title = "Comments";

        $crud = $this->_getGroceryCrudEnterprise();
        $crud->setTable('product_comments');
        $crud->setSkin('bootstrap-v4');
        $crud->setSubject('Comment', 'Comments');
        // $crud->unsetAdd();
        $crud->columns(['product_id', 'name', 'email', 'comment']);
        $crud->addFields(['product_id', 'name', 'email', 'comment']);
        $crud->requiredFields(['product_id', 'name', 'email', 'comment']);
        $crud->editFields(['product_id', 'name', 'email', 'comment']);
        $crud->setTexteditor(['comment']);
        $crud->setRelation('product_id', 'products', 'name');
        $crud->fieldType('email', 'email');
        $crud->displayAs([
            'product_id' => 'Product'
        ]);
        $output = $crud->render();

        return $this->_show_output($output, $title);
    }
}
