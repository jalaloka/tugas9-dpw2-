<?php

namespace App\Http\Controllers;

use App\Models\Produk;
use Illuminate\Http\Request;

class ProdukController extends Controller
{
    public function index()
    {
        $user = request()->user();
        $data['list_produk'] = $user->produk;
        return view('produk.index', $data);
    }


    public function create()
    {
        return view('produk.create');
    }

    
    public function store(Request $request)
    {
        $produk = new Produk();
        $produk->id_user = request()->user()->id;
        $produk->nama = request('nama');
        $produk->harga = request('berat');
        $produk->berat = request('berat');
        $produk->stok = request('stok');
        $produk->deskripsi = request('deskripsi');
        $produk->save();

        return redirect('admin/produk')->with('success', 'produk berhasil di tambahkan');
    }

 
    public function show(Produk $produk)
    {
        $data['produk'] = $produk;
        return view('produk.show', $data);
    }

  
    public function edit(Produk $produk)
    {
        $data['produk'] = $produk;
        return view('produk.edit', $data);
    }

   
    public function update(Produk $produk)
    {
        $produk->nama = request('nama');
        $produk->harga = request('berat');
        $produk->berat = request('berat');
        $produk->stok = request('stok');
        $produk->deskripsi = request('deskripsi');
        $produk->save();

        return redirect('admin/produk')->with('success', 'produk berhasil di edit');
    }

   
    public function destroy(Produk $produk)
    {
        $produk->delete();
        return redirect('admin/produk')->with('danger', 'produk berhasil di hapus');
    }

    public function filter()
    {
        // where 
        $nama = request('nama');
        $data['nama'] = $nama;

        // $data['list_produk'] = Produk::where('nama', 'like', "%$nama%")->get();


        // where in   

        $stok = explode(",", request('stok'));
        $data['stok'] = request('stok');

        // $data['list_produk'] = Produk::wherein('stok', $stok)->get();


        // where betwen

        $harga_min = request('harga_min');
        $harga_max = request('harga_max');
        $data['harga_min'] = $harga_min;
        $data['harga_max'] = $harga_max;

        $data['list_produk'] = Produk::whereBetween('harga', [$harga_min, $harga_max])->get();

        // where not

        // $data['list_produk'] = Produk::whereNot('stok', '<>' , $stok)->get();

        // where not in 

        // $data['list_produk'] = Produk::whereNotIn('stok', $stok)->get();

        // where not beetwen

        // $data['list_produk'] = Produk::whereNotBetween('harga', [$harga_max, $harga_min])->get();


        // where null

        // $data['list_produk'] = Produk::whereNull('stok')->get();


        // where not null

        // $data['list_produk'] = Produk::whereNotNull('stok')->get();

        // where date

        // $data['list_produk'] = Produk::whereBetween('harga', [$harga_max, $harga_min])->whereIn('stok', [10])->get();

        return view('produk.index', $data);
    }
}
