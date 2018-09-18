@extends('layouts.app')


@section('content')

<div class="panel panel-default">
<div class="panel-heading">Tags</div>

	<div class="panel-body">
		<table class="table table-hover">
	<thead>
		<th>Tag Name</th>
		<th>Edit</th>
		<th>Delete</th>
	</thead>
	<tbody>
		@if($tags->count()>0)
		@foreach($tags as $tag)

			<tr>
				<td>{{$tag->tag}}</td>
				<td><a href="{{route('tag.edit', ['id'=>$tag->id])}}" class="btn btn-info btn-xs">Edit</button></td>
				<td><a href="{{route('tag.delete', ['id'=>$tag->id])}}" class="btn btn-danger btn-xs">Delete</span></button></td>
			</tr>		

		@endforeach

				@else
		<tr>
		  <td class="text-center" colspan="5">No tags created yet.</td>
	    </tr>
		@endif
	</tbody>
</table>
	</div>
</div>
@stop