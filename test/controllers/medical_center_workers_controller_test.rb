require "test_helper"

class MedicalCenterWorkersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medical_center_worker = medical_center_workers(:one)
  end

  test "should get index" do
    get medical_center_workers_url
    assert_response :success
  end

  test "should get new" do
    get new_medical_center_worker_url
    assert_response :success
  end

  test "should create medical_center_worker" do
    assert_difference('MedicalCenterWorker.count') do
      post medical_center_workers_url, params: { medical_center_worker: { medical_center_id: @medical_center_worker.medical_center_id, worker_id: @medical_center_worker.worker_id } }
    end

    assert_redirected_to medical_center_worker_url(MedicalCenterWorker.last)
  end

  test "should show medical_center_worker" do
    get medical_center_worker_url(@medical_center_worker)
    assert_response :success
  end

  test "should get edit" do
    get edit_medical_center_worker_url(@medical_center_worker)
    assert_response :success
  end

  test "should update medical_center_worker" do
    patch medical_center_worker_url(@medical_center_worker), params: { medical_center_worker: { medical_center_id: @medical_center_worker.medical_center_id, worker_id: @medical_center_worker.worker_id } }
    assert_redirected_to medical_center_worker_url(@medical_center_worker)
  end

  test "should destroy medical_center_worker" do
    assert_difference('MedicalCenterWorker.count', -1) do
      delete medical_center_worker_url(@medical_center_worker)
    end

    assert_redirected_to medical_center_workers_url
  end
end
