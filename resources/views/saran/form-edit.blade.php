@extends("blank")

@section("konten")

    <form action="{{ route("update_saran", ['id' => $id]) }}" method="post">
        @csrf
        @method("put")

        Judul Lagu: 
        <select name="id_musik">
            
            @foreach($musiks as $musik)
            <option value="{{$musik->judul}}">{{$musik->judul}}</option>
            @endforeach
            
        </select>
        <br>
        

        Beri Saran : <input type="text" name="saran"> <br>
        <hr>
        <button type="submit">Simpan</button>
        <hr>
    @include("menu") 

@endsection
