@extends("blank")

@section("konten")

    <form action="{{ route("simpan_saran") }}" method="post">
        @csrf

        Judul Lagu: 
        <select name="id_musik">
            
            @foreach($musiks as $musik)
            <option value="{{$musik->judul}}">{{$musik->judul}}</option>
            @endforeach
            
        </select>
        <br>
        

        Beri Saran : <input type="text" name="saran"> <br>
        
        <button type="submit">Kirim Saran</button>
        <hr>



        @include("menu")
@endsection
