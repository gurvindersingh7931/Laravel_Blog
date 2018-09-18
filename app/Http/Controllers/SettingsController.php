<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Setting;

use Session;

class SettingsController extends Controller
{

	public function __construct()
	{
		$this->middleware('admin');
	}

	public function index()
	{
		return view('admin.settings.settings')->with('settings', Setting::first());
	}
	public function update()
	{

		$setting = Setting::first();

		$this->validate(request(), [
				'site_name' => 'required',
				'contact_email' => 'required',
				'contact_number' => 'required',
				'address' => 'required'
		]);

		$setting->site_name = request()->site_name;
		$setting->contact_number = request()->contact_number;
		$setting->contact_email = request()->contact_email;
		$setting->address = request()->address;

		$setting->save();

		Session::flash('success','Settings updated.');

		return redirect()->back();
	}

}
