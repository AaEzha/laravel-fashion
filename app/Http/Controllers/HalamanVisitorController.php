<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product;
use App\ProductComment;
use Illuminate\Http\Request;

class HalamanVisitorController extends Controller
{
    public function index()
    {
        $data = Category::all();
        return view('halaman_tamu.index', compact('data'));
    }

    public function kategori(Category $category)
    {
        $prods = $category->products;
        return view('halaman_tamu.kategori', compact('category','prods'));
    }

    public function pakaian(Category $category, Product $product)
    {
        return view('halaman_tamu.pakaian', compact('category','product'));
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
