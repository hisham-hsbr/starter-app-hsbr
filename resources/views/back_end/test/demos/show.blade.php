@extends('back_end.layouts.app')

@section('PageHead')
    {{ ucwords(__('my.show')) }}
@endsection

@section('PageTitle')
    {{ ucwords(__('my.show')) }}
@endsection

@section('pageNavHeader')
    <li class="breadcrumb-item"><a href="{{ route('back-end.dashboard') }}">{{ ucwords(__('my.dashboard')) }}</a></li>
    <li class="breadcrumb-item"><a href="{{ route($routeName . '.index') }}">{{ $headName }}</a></li>
    <li class="breadcrumb-item active">{{ ucwords(__('my.show')) }}</li>
@endsection

@section('headLinks')

@endsection

@section('actionTitle')
    {{ ucwords(__('my.show')) }}
@endsection
<x-test-component />

@section('mainContent')
    <div class="container-fluid">
        @can('Services View')
            <div class="row">
                <div class="col-md-1">

                </div>
                <!-- left column -->
                <div class="col-md-12">
                    <div class="card-body">
                        <!-- /.card-header -->
                        <!-- form start -->
                        <div class="card-body">
                            <div style="border-style: groove;" class="p-3 form-group row">
                                @can('{{ $permissionName }} Read Name')
                                    <div class="col-sm-6">
                                        <label class="col-sm-4">Name</label>
                                        <label><code>: {{ $testDemo->name }}</code></label>
                                    </div>
                                @endcan
                                @can('{{ $permissionName }} Read Local Name')
                                    <div class="col-sm-6">
                                        <label class="col-sm-4">Local Name</label>
                                        <label><code>: {{ $testDemo->name }}</code></label>
                                    </div>
                                @endcan
                                @can('{{ $permissionName }} Read Created At')
                                    <div class="col-sm-6">
                                        <label class="col-sm-4">Created At</label>
                                        <label><code>: {{ $testDemo->created_at }}</code></label>
                                    </div>
                                @endcan
                                @can('{{ $permissionName }} Read Updated At')
                                    <div class="col-sm-6">
                                        <label class="col-sm-4">Updated At</label>
                                        <label><code>: {{ $testDemo->updated_at }}</code></label>
                                    </div>
                                @endcan
                            </div>
                        </div>
                    </div>


                    <!-- /.card-body -->
                    <div class="">
                        @can('Mobile Service Pdf')
                            <a type="button" href="{{ route($routeName . '.pdf', $testDemo->id) }}"
                                class="float-right ml-1 btn btn-info"><i class="fa-solid fa-file-pdf"></i> PDF</a>
                        @endcan
                        <a type="button" href="{{ route($routeName . '.edit', $testDemo->id) }}"
                            class="float-right ml-1 btn btn-primary">Edit</a>
                        <a type="button" href="{{ route($routeName . '.index') }}"
                            class="float-right ml-1 btn btn-warning">Back</a>
                    </div>
                    <!-- /.card-footer -->

                </div>
                <!--/.col (left) -->

            </div>
            <!-- /.row -->
        @endcan
    </div><!-- /.container-fluid -->


@endsection
@section('actionFooter', 'Footer')
@section('footerLinks')


    <x-back-end.message.message />



@endsection
