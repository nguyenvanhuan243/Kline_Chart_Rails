require 'test_helper'

class KlineChartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kline_chart = kline_charts(:one)
  end

  test "should get index" do
    get kline_charts_url
    assert_response :success
  end

  test "should get new" do
    get new_kline_chart_url
    assert_response :success
  end

  test "should create kline_chart" do
    assert_difference('KlineChart.count') do
      post kline_charts_url, params: { kline_chart: {  } }
    end

    assert_redirected_to kline_chart_url(KlineChart.last)
  end

  test "should show kline_chart" do
    get kline_chart_url(@kline_chart)
    assert_response :success
  end

  test "should get edit" do
    get edit_kline_chart_url(@kline_chart)
    assert_response :success
  end

  test "should update kline_chart" do
    patch kline_chart_url(@kline_chart), params: { kline_chart: {  } }
    assert_redirected_to kline_chart_url(@kline_chart)
  end

  test "should destroy kline_chart" do
    assert_difference('KlineChart.count', -1) do
      delete kline_chart_url(@kline_chart)
    end

    assert_redirected_to kline_charts_url
  end
end
