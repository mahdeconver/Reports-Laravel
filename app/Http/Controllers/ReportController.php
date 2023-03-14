<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Report;

use Illuminate\Support\Facades\Auth;
use Illuminate\Database\Eloquent\Relations\HasMany;

class ReportController extends Controller
{
    public function index()
    {
 
    $reportvalue =auth()->user()->ReportFunction;
    return response()->json([
        'success' => true,
        'data' => $reportvalue
    ]);

      
    
 
       
    }
 
    public function show($id)
    {
        $reportvalue = auth()->user()->ReportFunction->find($id);
 
        if (!$reportvalue) {
            return response()->json([
                'success' => false,
                'message' => 'reports not found '
            ], 400);
        }
 
        return response()->json([
            'success' => true,
            'data' => $reportvalue->toArray()
        ], 400);
    }
 
    public function store(Request $request)
    {
        $this->validate($request, [
            'title'=> 'required',
            'report' => 'required',
            
        ]);
 
        $reportvalue = new Report();
        $reportvalue->report = $request->report;
        $reportvalue->title = $request->title;
      
 
        if (auth()->user()->ReportFunction()->save($reportvalue))
            return response()->json([
                'success' => true,
                'data' => $reportvalue->toArray()
            ]);
        else
            return response()->json([
                'success' => false,
                'message' => 'report not added'
            ], 500);



            
    }
 
    public function update(Request $request, Report $reportvalue,$id)
    {
      
        $reportvalue = auth()->user()->ReportFunction->find($id);
       
       $newvalue= $reportvalue->update([
        'title'=>($request->title) ? $request->title : $reportvalue->title ,
        'report'=>($request->report) ? $request->report : $reportvalue->report ,



    ]);
    return   $newvalue;
    

    }
 
    public function destroy($id)
    {
        $reportvalue = auth()->user()->ReportFunction->find($id);
 
        if (!$reportvalue) {
            return response()->json([
                'success' => false,
                'message' => 'report not found'
            ], 400);
        }
 
        if ($reportvalue->delete()) {
            return response()->json([
                'success' => true
            ]);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'report can not be deleted'
            ], 500);
        }
    }

    public function all (){
        
     $reportvalue=   Report::all();
   
    return response()->json($reportvalue,200);    }

    

    }