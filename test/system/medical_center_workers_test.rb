require "application_system_test_case"

class MedicalCenterWorkersTest < ApplicationSystemTestCase
  setup do
    @medical_center_worker = medical_center_workers(:one)
  end

  test "visiting the index" do
    visit medical_center_workers_url
    assert_selector "h1", text: "Medical Center Workers"
  end

  test "creating a Medical center worker" do
    visit medical_center_workers_url
    click_on "New Medical Center Worker"

    fill_in "Medical center", with: @medical_center_worker.medical_center_id
    fill_in "Worker", with: @medical_center_worker.worker_id
    click_on "Create Medical center worker"

    assert_text "Medical center worker was successfully created"
    click_on "Back"
  end

  test "updating a Medical center worker" do
    visit medical_center_workers_url
    click_on "Edit", match: :first

    fill_in "Medical center", with: @medical_center_worker.medical_center_id
    fill_in "Worker", with: @medical_center_worker.worker_id
    click_on "Update Medical center worker"

    assert_text "Medical center worker was successfully updated"
    click_on "Back"
  end

  test "destroying a Medical center worker" do
    visit medical_center_workers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medical center worker was successfully destroyed"
  end
end
