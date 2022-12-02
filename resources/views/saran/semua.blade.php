@extends("blank")

@section("konten")

    <h1>Semua Saran</h1>

    @foreach($data as $saran)
        Saran : {{ $saran->Saran }} <br>
        
        <a href="{{ route('tampil_saran', ['id' => $saran->id]) }}">Tampil</a>

<hr>
    @endforeach
    <a href="{{route('buat_saran')}}">Tambah Saran Baru</a>
    <hr>
    @include("menu") 
@endsection
