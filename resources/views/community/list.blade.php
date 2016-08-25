<ul class="list-group">
    @if (count($links))
        @foreach($links as $link)
            <li class="list-group-item" style="list-style: none">
                <a href="/community/{{ $link->channel->slug }}" class="label label-info" style="color: {{ $link->channel->color }}">
                    {{ $link->channel->title }}
                </a>

                <a href="{{ $link->link }}" target="_blank">
                    {{ $link->title }}
                </a>
                <small>
                    contributed by {{ $link->creator->name }} | {{ $link->updated_at->diffForHumans() }}
                </small>
            </li>
        @endforeach
    @else
        <li>No Contributions yet</li>
    @endif
</ul>

{{ $links->links() }}