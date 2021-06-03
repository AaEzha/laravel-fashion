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

          @foreach ($prods as $d)

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0" data-aos="fade-up">
            <div class="icon-box">
                <a href="{{ route('produk', [$category->slug, $d->slug]) }}"><img src="{{ asset('storage/'.$d->image) }}" width="200">
              <h4 class="title">{{ $d->name }}</a></h4>
              <p class="description">{!! $d->content !!}</p>
            </div>
          </div>

          @endforeach

        </div>

      </div>
    </section><!-- End Icon Boxes Section -->

  </main><!-- End #main -->
@endsection
