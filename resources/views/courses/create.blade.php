@extends('layouts.app')

@section('title', 'Create Attention')

@section('content')


    <div class="row">
        <div class="col-12">
            <div class="page-title-box" >
                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item"><a href="javascript: void(0);">Hyper</a></li>
                        <li class="breadcrumb-item"><a href="javascript: void(0);">Projects</a></li>
                        <li class="breadcrumb-item active">Create Project</li>
                    </ol>
                </div>
                <div class="d-flex align-items-center"  id="tooltip-back-container">
                    <a href="{{ url()->previous() }}" class="me-2"  data-bs-container="#tooltip-back-container" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Back"><i class="uil-backward"></i></a>
                    <h4 class="page-title">Create Material</h4>
                </div>
            </div>
        </div>
    </div>


    @include('layouts.fragments.alerts')


    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">

                    <form action="{{ route('courses.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('POST')

                        <div class="row">

                            <div class="col-xl-8">

                                <input type="hidden" name="content" id="hidden-content">
                                <input type="hidden" name="files[]" id='hidden-files'>

                                <div class="mb-3">
                                    <label for="projectname" class="form-label">Name</label>
                                    <input type="text" id="projectname" class="form-control" name="title" placeholder="Enter material name">
                                </div>


                                <div class="mb-3">
                                    <label for="description" class="form-label">Name</label>
                                    <input type="text" id="description" class="form-control" name="description" placeholder="Enter material description">
                                </div>


                                <div class="mb-3">
                                    <label for="project-overview" class="form-label">Overview</label>
                                    <div id="snow-editor" style="height: 300px;"></div>
                                </div>

                                <div class="mb-0">
                                    <label for="project-overview" class="form-label">Tags</label>

                                    <select class="form-control select2" data-toggle="select2" name="tag_id">
                                        @foreach ($tags as $key => $tag)
                                            @if (0 == $key) <option value="{{ $tag->id }}" selected>{{ $tag->title }}</option>
                                            @else <option value="{{ $tag->id }}">{{ $tag->title }}</option>
                                            @endif
                                        @endforeach
                                    </select>

                                </div>

                            </div>


                           <div class="col-xl-4">

                                <div class="mb-3 mt-3 mt-xl-0">

                                    <label for="projectname" class="mb-0">Materials</label>
                                    <input type="file" name="files[]" multiple>

                                </div>

                            </div>

                        </div>


                        <div class="row mt-3">
                               <div class="col-3">
                                    <a href="{{ url()->previous() }}" class="btn btn-secondary e-2" >Cancel</a>
                                    <button type="submit" class="btn btn-primary">Create</button>
                               </div>
                        </div>

                    </form>

                </div>
            </div>
        </div>
    </div>


@endsection


@push('header_scripts')
    <link href="{{ asset('assets/css/vendor/quill.core.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/css/vendor/quill.bubble.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/css/vendor/quill.snow.css') }}" rel="stylesheet" type="text/css" />
    <script src="{{ asset('assets/js/vendor/quill.min.js') }}"></script>
@endpush

@push('footer_scripts')
    <script src="{{ asset('assets/js/pages/materials.js') }}"></script>
    <script src="{{ asset('assets/js/vendor/dropzone.min.js') }}"></script>
    <script>

    </script>
@endpush
