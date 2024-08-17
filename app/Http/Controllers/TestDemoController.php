<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\TestDemo;
use Illuminate\Http\Request;
use Yajra\Datatables\Datatables;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class TestDemoController extends Controller
{
    private $headName = 'Test Demos';
    private $routeName = 'test-demos';
    private $permissionName = 'Test Demo';
    private $snakeName = 'test_demo';
    private $camelCase = 'testDemo';

    public function __construct()
    {
        $this->middleware('auth');

        // $this->middleware('permission:TestDemo Read', ['only' => ['index']]);
        // $this->middleware('permission:TestDemo Create', ['only' => ['create','store']]);
        // $this->middleware('permission:TestDemo Edit', ['only' => ['Edit','Update']]);
        // $this->middleware('permission:TestDemo Delete', ['only' => ['destroy']]);

    }

    public function demo1()
    {
        $users = User::all();
        // $users = User::active()->get();
        return view('back_end.test.demo1')->with(
            [
                'headName' => $this->headName,
                'routeName' => $this->routeName,
                'permissionName' => $this->permissionName,
                'users' => $users,
            ]
        );
    }
    public function index()
    {
        $testDemos = TestDemo::all();
        $createdByUsers = $testDemos->sortBy('created_by')->pluck('created_by')->unique();
        $updatedByUsers = $testDemos->sortBy('updated_by')->pluck('updated_by')->unique();

        return view('back_end.test.demos.index')->with(
            [
                'headName' => $this->headName,
                'routeName' => $this->routeName,
                'permissionName' => $this->permissionName,
                'testDemos' => $testDemos,
                'createdByUsers' => $createdByUsers,
                'updatedByUsers' => $updatedByUsers,
            ]
        );
    }

    public function testDemosGet()
    {

        $testDemos = TestDemo::all();
        // $testDemos = TestDemo::withTrashed()->get();


        return Datatables::of($testDemos)

            ->setRowId(function ($testDemo) {
                return $testDemo->id;
            })

            // ->editColumn('status', function (TestDemo $testDemo) {

            //     $active = '<span style="background-color: #04AA6D;color: white;padding: 3px;width:100px;">Active</span>';
            //     $inActive = '<span style="background-color: #ff9800;color: white;padding: 3px;width:100px;">In Active</span>';

            //     $status = $testDemo->status == 'Active' ? $active : $inActive;
            //     return $status;
            // })

            ->addColumn('action', function (TestDemo $testDemo) {
                $CSRFToken = "csrf_field()";
                $action2 =
                    '
                    <div class="btn-group">
                        <button type="button" class="btn btn-info">Action</button>
                        <button type="button" class="btn btn-info dropdown-toggle dropdown-icon" data-toggle="dropdown" ></button>
                        <div class="dropdown-menu" role="menu">
                        <a href="' . route('test-demos.show', encrypt($testDemo->id)) . '" class="ml-2"><i class="fa-solid fa fa-eye text-success"></i></a>
                        <a href="' . route('test-demos.pdf', encrypt($testDemo->id)) . '" class="ml-2"><i class="fa-solid fa-file-pdf"></i></a>
                        <a href="' . route('test-demos.edit', encrypt($testDemo->id)) . '" class="ml-2"><i class="fa-solid fa-edit text-warning"></i></a>
                        <button class="btn btn-link delete-item_delete" data-item_delete_id="' . encrypt($testDemo->id) . '" data-value="' . $testDemo->name . '" type="submit"><i
                                class="fa-solid fa-eraser text-danger"></i>
                        </button>
                        <button class="btn btn-link delete-item_delete_force" data-item_delete_force_id="' . encrypt($testDemo->id) . '" data-value="' . $testDemo->name . '" data-bs-toggle="modal" data-bs-target="#deleteConfirmationModal" type="submit"><i
                                class="fa-solid fa-trash-can text-danger"></i>
                        </button>
                        </div>
                    </div>
                    ';







                return $action2;
            })


            ->rawColumns(['status', 'editLink', 'deleteLink', 'action'])
            ->toJson();
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('back_end.test.demos.create')->with(

            [
                'headName' => $this->headName,
                'routeName' => $this->routeName,
                'permissionName' => $this->permissionName,
            ]
        );
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'code' => 'required|unique:testDemos,code',
            'name' => 'required',
        ]);
        $testDemo = new TestDemo();


        $testDemo->code  = $request->code;
        $testDemo->name = $request->name;


        if ($request->status == 0) {
            $testDemo->status == 0;
        }

        $testDemo->status = $request->status;

        $testDemo->created_by = Auth::user()->id;
        $testDemo->updated_by = Auth::user()->id;

        $testDemo->save();

        return redirect()->route('testDemos.index')->with(
            [
                'message_store' => 'TestDemo Created Successfully'
            ]
        );
    }

    /**
     * Display the specified resource.
     */
    public function show($testDemo)
    {
        $testDemo = TestDemo::find(decrypt($testDemo));

        return view('back_end.test.demos.show')->with(
            [
                'testDemo' => $testDemo,
                'camelCase' => $this->camelCase,
                'headName' => $this->headName,
                'routeName' => $this->routeName,
                'permissionName' => $this->permissionName,
            ]
        );
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($testDemo)
    {
        $testDemo = TestDemo::find($testDemo);

        return view('back_end.test.demos.edit')->with(
            [
                'testDemo' => $testDemo
            ]
        );
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name' => 'required',
            'code' => "required|unique:testDemos,code,$id",
        ]);
        $testDemo = TestDemo::find($id);


        $testDemo->code  = $request->code;
        $testDemo->name = $request->name;


        if ($request->status == 0) {
            $testDemo->status == 0;
        }

        $testDemo->status = $request->status;

        $testDemo->updated_by = Auth::user()->id;

        $testDemo->save();

        return redirect()->route('testDemos.index')->with(
            [
                'message_store' => 'TestDemo Updated Successfully'
            ]
        );
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $testDemo  = TestDemo::findOrFail(decrypt($id));
        $testDemo->delete();

        return redirect()->route('testDemos.index')->with(
            [
                'message_update' => 'TestDemo Delete Successfully'
            ]
        );
    }
    public function forceDestroy($id)
    {
        $testDemo  = TestDemo::findOrFail(decrypt($id));
        $testDemo->forceDelete();

        return redirect()->route('testDemos.index')->with(
            [
                'message_update' => 'TestDemo Force Delete Successfully'
            ]
        );
    }
    public function restore($id)
    {
        $testDemo  = TestDemo::withTrashed()->findOrFail($id);
        $testDemo->restore();
        return redirect()->route('testDemos.index')->with(
            [
                'message_update' => 'TestDemo Restored Successfully'
            ]
        );
    }
}
