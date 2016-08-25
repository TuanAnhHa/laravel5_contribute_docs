<?php

namespace App\Http\Controllers;

use App\Channel;
use Illuminate\Http\Request;
use App\CommunityLink;
use App\Exceptions\CommunityLinkSubmitted;
use App\Http\Requests;
use Auth;

class CommunityLinksController extends Controller
{
    public function index(Channel $channel = null)
    {
        $links = CommunityLink::forChannel($channel)->where('approved', 1)->latest('updated_at')->paginate(5);
        $channels = Channel::orderBy('title', 'asc')->get();

        //flash('Tuan Anh Ha is the best Web-Developer of all times.', 'success')->important();

        return view('community.index', compact('links', 'channels', 'channel'));
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'channel_id' => 'required|exists:channels,id',
            'title' => 'required',
            'link' => 'required'
        ]);

        try {
            CommunityLink::from(Auth::user())->contribute($request->all());

            if(auth()->user()->isTrusted()){
                flash('Thanks for the contribution!', 'success');
            } else {
                flash('This contribution will be considered shortly.');
            }
        } catch (CommunityLinkSubmitted $e){
            flash('That link has already been submitted.');
        }

        return back();
    }
}
