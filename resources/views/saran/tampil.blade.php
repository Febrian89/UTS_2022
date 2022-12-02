@extends("blank")

@section("konten")

<h1>Saran</h1>

    Judul Lagu : {{ $saran->musik_id }} <br>
    Isi Saran : {{ $saran->Saran }} <br>
    

<a href="{{ route('ubah_saran', ['id' => $saran->id]) }}">Ubah</a>


<form action="{{ route('hapus_saran', ['id' => $saran->id]) }}" method="post">
    @csrf
    @method('delete')
    <button type="submit">Hapus</button>
</form>
<hr>
<a href="{{route('semua_saran')}}">Semua Saran</a> 
    <hr>
    @include("menu")
@endsection