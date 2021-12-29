<?php

namespace App\Http\Controllers;

use App\Models\Actor;
use Illuminate\Http\Request;

class ActorController extends Controller
{
    public function index(Request $request)
    {

        if ($request->ajax()) {
            if ($request->search == '') {
                $actors = Actor::get();
                $view = view('actor.data', compact('actors'))->render();
                return response()->json(['html' => $view]);
            } else {
                $actors = Actor::where('name', 'LIKE', '%' . $request->search . '%')->get();
                $view = view('actor.data', compact('actors'))->render();
                return response()->json(['html' => $view]);
            }
        }

        $actors = Actor::paginate(10);
        return view('actor.index', compact('actors'));
    }

    public function create()
    {
        $this->authorize('addActor');

        $actor = new Actor();
        return view('actor.create', compact('actor'));
    }

    public function store(Request $request)
    {
        $this->authorize('addActor');

        $attr = $request->validate([
            'name' => 'required|min:3',
            'image_url' => 'required|min:5'
        ]);

        $attr['actor_id'] = 'ACT';
        $countActor = Actor::count() + 1;
        if ($countActor < 10) {
            $attr['actor_id'] .= (string)'00';
        } else if ($countActor < 100) {
            $attr['actor_id'] .= (string)'0';
        }
        $attr['actor_id'] .= $countActor;
        Actor::create($attr);


        return redirect('/actor')->with('success-info', 'Add Actor Successfully');
    }

    public function edit(Actor $actor)
    {
        $this->authorize('addActor');

        return view('actor.edit', compact('actor'));
    }

    public function update(Request $request, Actor $actor)
    {
        $this->authorize('addActor');
        $attr = $request->validate([
            'name' => 'required|min:3',
            'image_url' => 'required|min:5'
        ]);
        $actor->update($attr);
        return redirect('/actor')->with('success-info', 'Update Actor Successfully');
    }

    public function destroy(Actor $actor)
    {
        $this->authorize('addActor');

        $actor->delete();
        return redirect('/actor')->with('success-info', 'Delete Actor Successfully');
    }
}
