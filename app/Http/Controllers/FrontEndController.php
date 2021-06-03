<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product;
use App\ProductComment;
use Illuminate\Http\Request;

class FrontEndController extends Controller
{
    public function index()
    {
        $data = Category::all();
        return view('frontend.front', compact('data'));
    }

    public function category(Category $category)
    {
        $prods = $category->products;
        return view('frontend.category', compact('category','prods'));
    }

    public function product(Category $category, Product $product)
    {
        return view('frontend.product', compact('category','product'));
    }

    public function store(Product $product, Request $request)
    {
        ProductComment::create([
            'product_id' => $product->id,
            'name' => $request->nama,
            'email' => $request->email,
            'comment' => $request->komentar
        ]);

        return redirect()->back();
    }
}
