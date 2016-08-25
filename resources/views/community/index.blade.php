@extends('layouts.app')

@section('content')

    <div class="row">
        <div class="col-md-7">
            <h1>
                <a href="/community">Board of Documentations</a>
                @if($channel->exists)
                    <span>&rightarrow; {{ $channel->title }} </span>
                @endif
            </h1>

            @include('community.list')
        </div>

        @include('community.add-link')
    </div>

@stop