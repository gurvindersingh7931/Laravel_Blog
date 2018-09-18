@extends('layouts.app')


@section('content')

<div class="panel panel-default">
	<div class="panel-heading">Trashed Posts</div>
	<div class="panel-body">
		<table class="table table-hover">
	<thead>
		<th>Image</th>
		<th>Title</th>
		<th>Edit</th>
		<th>Restore</th>
		<th>Destroy</th>
	</thead>
	<tbody>
@if($posts->count()>0)

		@foreach($posts as $post)

			<tr>
				<td><img src="{{$post->featured}}" height="50px" width="90px" alt="{{$post->title}}"></td>
				<td>{{$post->title}}</td>
				<td><a href="" class="btn btn-info btn-sm">Edit</button></td>
				<td><a href="{{route('post.restore', ['id'=>$post->id])}}" class="btn btn-success btn-xs">Restore</span></button></td>
				<td><a href="{{route('post.kill', ['id'=>$post->id])}}" class="btn btn-danger btn-xs">Delete</span></button></td>
			</tr>		

		@endforeach

		@else
		<tr>
		  <td class="text-center" colspan="5">No trashed posts.</td>
	    </tr>
		@endif

	</tbody>
</table>
	</div>
</div>
@stop