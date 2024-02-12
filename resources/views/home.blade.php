@extends('layouts.main')

@section('container')    
    <!-- Hero -->
    <section class="hero">
        <div class="container">
          <div class="row">
            <!-- text -->
            <div class="col-md-6">
              <div class="text text-capitalize">RXZ blog is a platform for writing blogs easily and for free</div>
              <div class="buttons">
                <a href="#" class="btn btn-primary">Write Now</a>
                <a href="#" class="btn btn-outline-secondary ms-3">See Posts</a>
              </div>
            </div>
            <!-- image -->
            <div class="col-md-6">
              <img src="img/hero-img.svg" alt="hero-img" class="w-100" />
            </div>
          </div>
        </div>
      </section>
      <!-- Setup -->
      <section class="setup my-5">
        <div class="container">
          <div class="text-header text-center">
            <h3>Get Start quickly without the hassle</h3>
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing.</p>
          </div>
          <div class="items text-center">
            <div class="row">
              <div class="col-md-4">
                <div class="icons">
                  <img src="img/icons/icons-1.svg" alt="icons" />
                </div>
                <div class="desc">
                  <h5>Create account</h5>
                  <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Repudiandae illo ut unde perferendis laboriosam delectus, ea eos sequi repellat distinctio.</p>
                </div>
              </div>
              <div class="col-md-4">
                <div class="icons">
                  <img src="img/icons/icons-2.svg" alt="icons" />
                </div>
                <div class="desc">
                  <h5>Write Your Blog</h5>
                  <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Repudiandae illo ut unde perferendis laboriosam delectus, ea eos sequi repellat distinctio.</p>
                </div>
              </div>
              <div class="col-md-4">
                <div class="icons">
                  <img src="img/icons/icons-3.svg" alt="icons" />
                </div>
                <div class="desc">
                  <h5>Publish your work</h5>
                  <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Repudiandae illo ut unde perferendis laboriosam delectus, ea eos sequi repellat distinctio.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      
      <!-- Information -->
      <section class="information">
        <div class="container">
          <div class="row info-1">
            <!-- text -->
            <div class="col-md-6">
              <div class="text-information">
                <h5>Create interesting writing easily</h5>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dicta animi vel minima expedita quaerat saepe eveniet enim vitae! Repellendus, dolor.</p>
              </div>
            </div>
            <!-- image -->
            <div class="col-md-6">
              <img src="img/image-1.svg" alt="img-1" class="w-100" />
            </div>
          </div>
          <div class="row info-2">
            <!-- image -->
            <div class="col-md-6">
              <img src="img/image-2.svg" alt="img-2" class="w-100" />
            </div>
            <!-- text -->
            <div class="col-md-6">
              <div class="text-information">
                <h5>Publish your writing for free</h5>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dicta animi vel minima expedita quaerat saepe eveniet enim vitae! Repellendus, dolor.</p>
              </div>
            </div>
          </div>
        </div>
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
            <path
              fill="#0d6efd"
              fill-opacity="1"
              d="M0,256L30,250.7C60,245,120,235,180,224C240,213,300,203,360,208C420,213,480,235,540,224C600,213,660,171,720,170.7C780,171,840,213,900,229.3C960,245,1020,235,1080,240C1140,245,1200,267,1260,261.3C1320,256,1380,224,1410,208L1440,192L1440,320L1410,320C1380,320,1320,320,1260,320C1200,320,1140,320,1080,320C1020,320,960,320,900,320C840,320,780,320,720,320C660,320,600,320,540,320C480,320,420,320,360,320C300,320,240,320,180,320C120,320,60,320,30,320L0,320Z"
            ></path>
          </svg>
      </section>
      <!-- footer -->
      <footer class="bg-primary">
        <div class="container">
          <div class="row justify-content-center align-items-center py-3"> 
            <div class="copy text-center text-white">&copy; Copyright 2024 .MuhAinurRiziq. All Right Reserved.</div>
          </div>
        </div>
      </footer>
@endsection

