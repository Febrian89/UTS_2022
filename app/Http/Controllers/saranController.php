<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\saran;
use App\Models\musik;//manggil musik


    class saranController extends Controller
{
    public function buat()
    {
        // menghubungkan ke musik
        $musiks = musik::all();
        return view("saran.form-input")->with('musiks', $musiks);
    }

    public function simpan(Request $request)
    {
        $saran = new saran();
        $saran->Saran = $request->get('saran');
        $saran->musik_id = $request->get('id_musik'); //untuk link ke musik
        $saran->save();
        return view("saran.tampil")->with("saran", $saran);

    }

    // untuk menampilkan saran
    public function tampil($id)
    {
        $saran = Saran::find($id);

        return view("saran.tampil")->with("saran", $saran);
    }

    public function semua()
    {
        $data = saran::all();
        return view("saran.semua")->with("data", $data);
        
    }

//ubah favorit
    
    public function ubah($id)
    {
        // menghubungkan ke musik
        $musiks = musik::all();
        return view("saran.form-edit")->with('musiks', $musiks)->with('id', $id);
    }

    public function update(Request $request, $id)
    {
        $saran = Saran:: find($id);
        $saran->Saran = $request->get('saran');
        $saran->musik_id = $request->get('id_musik'); //untuk link ke musik
        $saran->save();
        return view("saran.tampil")->with("saran", $saran);
    }

//hapus saran
    public function hapus($id)
    {
        saran::destroy($id);
        return redirect(route('semua_saran'));
    }


}
