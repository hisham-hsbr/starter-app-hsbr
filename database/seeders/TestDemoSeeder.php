<?php

namespace Database\Seeders;

use App\Models\TestDemo;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class TestDemoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $run_test_seeder_disable = env('RUN_TEST_SEEDER_DISABLE');

        if ($run_test_seeder_disable == 'Y') {
            TestDemo::create(['name' => 'Test 1', 'local_name' => 'Local name 1',  'status' => '1', 'created_by' => '1', 'updated_by' => '1']); //
            TestDemo::create(['name' => 'Test 2', 'local_name' => 'Local name 2',  'status' => '1', 'created_by' => '1', 'updated_by' => '1']); //
            TestDemo::create(['name' => 'Test 3', 'local_name' => 'Local name 3',  'status' => '1', 'created_by' => '1', 'updated_by' => '1']); //
            TestDemo::create(['name' => 'Test 4', 'local_name' => 'Local name 4',  'status' => '1', 'created_by' => '1', 'updated_by' => '1']); //
        }
        if ($run_test_seeder_disable == 'N') {
            TestDemo::create(['name' => 'Test 1', 'local_name' => 'Local name 1',  'status' => '1', 'created_by' => '1', 'updated_by' => '1']); //
            TestDemo::create(['name' => 'Test 2', 'local_name' => 'Local name 2',  'status' => '1', 'created_by' => '1', 'updated_by' => '1']); //
            TestDemo::create(['name' => 'Test 3', 'local_name' => 'Local name 3',  'status' => '1', 'created_by' => '1', 'updated_by' => '1']); //
            TestDemo::create(['name' => 'Test 4', 'local_name' => 'Local name 4',  'status' => '1', 'created_by' => '1', 'updated_by' => '1']); //
            TestDemo::create(['name' => 'Test 5', 'local_name' => 'Local name 5',  'status' => '1', 'created_by' => '1', 'updated_by' => '1']); //
            TestDemo::create(['name' => 'Test 6', 'local_name' => 'Local name 6',  'status' => '1', 'created_by' => '1', 'updated_by' => '1']); //
            TestDemo::create(['name' => 'Test 7', 'local_name' => 'Local name 7',  'status' => '1', 'created_by' => '1', 'updated_by' => '1']); //
            TestDemo::create(['name' => 'Test 8', 'local_name' => 'Local name 8',  'status' => '1', 'created_by' => '1', 'updated_by' => '1']); //
            TestDemo::create(['name' => 'Test 9', 'local_name' => 'Local name 9',  'status' => '1', 'created_by' => '1', 'updated_by' => '1']); //
            TestDemo::create(['name' => 'Test 10', 'local_name' => 'Local name 10',  'status' => '1', 'created_by' => '1', 'updated_by' => '1']); //
            TestDemo::create(['name' => 'Test 11', 'local_name' => 'Local name 11',  'status' => '1', 'created_by' => '1', 'updated_by' => '1']); //
            TestDemo::create(['name' => 'Test 12', 'local_name' => 'Local name 12',  'status' => '1', 'created_by' => '1', 'updated_by' => '1']); //
            TestDemo::create(['name' => 'Test 13', 'local_name' => 'Local name 13',  'status' => '1', 'created_by' => '1', 'updated_by' => '1']); //
            TestDemo::create(['name' => 'Test 14', 'local_name' => 'Local name 14',  'status' => '1', 'created_by' => '1', 'updated_by' => '1']); //
            TestDemo::create(['name' => 'Test 15', 'local_name' => 'Local name 15',  'status' => '1', 'created_by' => '1', 'updated_by' => '1']); //
        }
    }
}