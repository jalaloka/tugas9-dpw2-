@extends ('template.section.base')

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-md-12 mt-5">
                <div class="card">
                    <div class="card-header">
                       Detail Data produk
                    </div>
                    <div class="card-body">
                      <h1> {{ $produk->nama }}</h1>
                      <hr>
                      <strong>
                          <p>
                            {{ $produk->Harga_String }} |
                              Stok {{ $produk->stok }} |
                              Berat {{ $produk->berat }}
                              seller : {{ $produk->seller->username }}|
                              tanggal : {{ $produk->created_at->diffForhumans() }}
                          </p>
  
                      </strong>
                      <p>
                          {!! nl2br($produk->deskripsi) !!}
                      </p>
                  </div>
                </div>
            </div>
        </div>
    </div>

@endsection
