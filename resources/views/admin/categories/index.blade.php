@extends('layouts.app')


@section('content')

<div class="panel panel-default">
<div class="panel-heading">Categories</div>

	<div class="panel-body">
		<table class="table table-hover">
	<thead>
		<th>Category Name</th>
		<th>Edit</th>
		<th>Delete</th>
	</thead>
	<tbody>
		@if($categories->count()>0)
		@foreach($categories as $category)

			<tr>
				<td>{{$category->name}}</td>
				<td><a href="{{route('category.edit', ['id'=>$category->id])}}" class="btn btn-info btn-xs">Edit</button></td>
				<td><a href="{{route('category.delete', ['id'=>$category->id])}}" class="btn btn-danger btn-xs">Delete</span></button></td>
			</tr>		

		@endforeach

				@else
		<tr>
		  <td class="text-center" colspan="5">No categories created yet.</td>
	    </tr>
		@endif
	</tbody>
</table>
	</div>
</div>
@stop