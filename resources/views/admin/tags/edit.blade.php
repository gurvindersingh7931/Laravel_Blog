@extends('layouts.app')


@section('content')

<div class="panel panel-default">
@include('admin.includes.errors')
	<div class="panel-heading">
		Edit Tag: {{$tag->tag}}
	</div>
	<div class="panel-body">
		<form action="{{ route('tag.update', ['id'=>$tag->id]) }}" method="post">
			{{ csrf_field() }}
			<div class="form-group">
				<label for="tag">Tag</label>
				<input type="text" name="tag" class="form-control" value="{{$tag->tag}}">
			</div>
			<div class="text-center">
				<button class="btn btn-success" type="submit">Update Tag</button>
			</div>

		</form>
	</div>
</div>

@stop