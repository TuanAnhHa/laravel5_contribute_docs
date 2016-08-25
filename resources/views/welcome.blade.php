@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">Welcome</div>

                <div class="panel-body">
                    <p>
                        Your Application's Landing Page. Please login using the following credentials.
                    </p>
                    <ul>
                        <li>Email Address: "user@test.de"</li>
                        <li>Password: "password"</li>
                    </ul>
                    <p>
                        @if(Auth::check())
                            Please click <a href="/community">here to go to my Community service</a>.
                        @endif
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
