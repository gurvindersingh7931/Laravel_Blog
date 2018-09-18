@extends('layouts.app')


@section('content')

<div class="panel panel-default">
	<div class="panel-heading">Published Posts</div>
	<div class="panel-body">
		<table class="table table-hover">
	<thead>
		<th>Image</th>
		<th>Title</th>
		<th>Edit</th>
		<th>Trash</th>
	</thead>
	<tbody>
		@if($posts->count()>0)
		@foreach($posts as $post)

			<tr>
				<td><img src="{{$post->featured}}" height="50px" width="90px" alt="{{$post->title}}"></td>
				<td>{{$post->title}}</td>
				<td><a href="{{route('post.edit', ['id'=>$post->id])}}" class="btn btn-info btn-xs">Edit</button></td>
				<td><a href="{{route('post.delete', ['id'=>$post->id])}}" class="btn btn-danger btn-xs">Trash</span></button></td>
			</tr>		

		@endforeach

				@else
		<tr>
		  <td class="text-center" colspan="5">No published posts.</td>
	    </tr>
		@endif
	</tbody>
</table>
	</div>
</div>
@stop