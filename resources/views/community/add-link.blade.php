<div class="col-md-5">
    <h3>Contribute a Website</h3>
    <div class="panel panel-default">
        <div class="panel panel-body">
            <form method="POST" action="/community">
                {{ csrf_field() }}
                <div class="form-group">
                    <select class="form-control" name="channel_id">
                        <option selected disabled>Please, pick a topic</option>
                        @foreach($channels as $channel)
                            <option value="{{ $channel->id }}" {{ old('channel_id') == $channel->id ? 'selected' : '' }}>
                                {{ $channel->title }}
                            </option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group {{ $errors->has('title') ? 'has-error' : '' }} ">
                    <input type="text" class="form-control" id="title" name="title" placeholder=" What is the title of your article?" value="{{ old('title') }}" required>

                    {!! $errors->first('title', '<span class="help-block">:message</span>') !!}
                </div>
                <div class="form-group {{ $errors->has('link') ? 'has-error' : '' }} ">
                    <input type="text" class="form-control" id="link" name="link" placeholder="What is the URL?" value="{{ old('link') }}" required>

                    {!! $errors->first('link', '<span class="help-block">:message</span>') !!}
                </div>
                <div class="form-group">
                    <button class="btn btn-primary">Contribute Now</button>
                </div>
            </form>
        </div>
    </div>
</div>