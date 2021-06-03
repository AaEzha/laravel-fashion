@extends('frontend.layout')

@section('content')

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex justify-cntent-center align-items-center">
    <div id="heroCarousel" class="container carousel carousel-fade mt-5" data-ride="carousel">

      <!-- Slide 1 -->
      <div class="carousel-item active">
        <div class="carousel-container">
          <h2 class="animate__animated animate__fadeInDown">{{ $category->name }}</h2>
          <p class="animate__animated animate__fadeInUp">{!! $category->content !!}</p>
        </div>
      </div>

    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= Icon Boxes Section ======= -->
    <section id="icon-boxes" class="icon-boxes">
      <div class="container">

        <div class="row">

          <div class="col d-flex align-items-stretch mb-5 mb-lg-0" data-aos="fade-up">
            <div class="icon-box text-center">
              <img src="{{ asset('storage/'.$product->image) }}" width="300">
              <h4 class="title"><a href="{{ route('produk', [$category->slug, $product->slug]) }}">{{ $product->name }}</a></h4>
              <p class="description">{!! $product->content !!}</p>
            </div>
          </div>

        </div>

        <div class="row mt-3">

          <div class="col">
              <form action="{{ route('produk.store', $product->slug) }}" method="post">
                  @csrf
                  <div class="form-group">
                    <label for="nama">Nama</label>
                    <input type="text"
                      class="form-control" name="nama" id="nama" placeholder="Nama Anda">
                  </div>
                  <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email"
                      class="form-control" name="email" id="email" placeholder="Email Anda">
                  </div>
                  <div class="form-group">
                    <label for="komentar">Komentar</label>
                    <textarea class="form-control" name="komentar" id="komentar" rows="3" placeholder="Komentar Anda"></textarea>
                  </div>
                  <button type="submit" class="btn btn-primary">Kirim Komentar</button>
                  <button type="reset" class="btn btn-warning">Batal</button>
              </form>
          </div>

        </div>

      </div>
    </section><!-- End Icon Boxes Section -->

  </main><!-- End #main -->
@endsection
