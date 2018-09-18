@extends('layouts.app')

@section('content')
<div class="col-lg-3">
    <div class="panel panel-info text-center">
        <div class="panel-heading">POSTED</div>

        <div class="panel-body">

            <h2 class="text-center">{{ $posts_count }}</h2>

        </div>
    </div>
</div>
<div class="col-lg-3">
    <div class="panel panel-danger text-center">
                <div class="panel-heading">TRASHED POSTS</div>

                <div class="panel-body">

                    <h2 class="text-center">{{ $trashed_count }}</h2>

                </div>
            </div>
</div>
<div class="col-lg-3">
    <div class="panel panel-success text-center">
                <div class="panel-heading">USERS</div>

                <div class="panel-body">

                    <h2 class="text-center">{{ $users_count }}</h2>

                </div>
            </div>
</div>
<div class="col-lg-3">
    <div class="panel panel-info text-center">
                <div class="panel-heading">CATEGORIES</div>

                <div class="panel-body">

                    <h2 class="text-center">{{ $categories_count }}</h2>

                </div>
            </div>
</div>


@endsection
