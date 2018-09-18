@extends('layouts.app')


@section('content')

<div class="panel panel-default">
	@include('admin.includes.errors')
	<div class="panel-heading">
		Create a new user
	</div>
	<div class="panel-body">
		<form action="{{ route('user.store') }}" method="post">
			{{ csrf_field() }}
			<div class="form-group">
				<label for="tag">User</label>
				<input type="text" name="name" class="form-control">
			</div>
			<div class="form-group">
				<label for="email">Email</label>
				<input type="email" name="email" class="form-control">
			</div>
			<div class="text-center">
				<button class="btn btn-success" type="submit">Add User</button>
			</div>

		</form>
	</div>
</div>

@stop