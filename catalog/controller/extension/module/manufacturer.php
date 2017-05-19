<?php
//==============================================
// Manufacturer Module 2.0
// Author : OpenCartBoost
// Email : support@opencartboost.com
// Website : http://www.opencartboost.com
//==============================================
class ControllerExtensionModuleManufacturer extends Controller {
	public function index($setting) {
		$this->load->language('extension/module/manufacturer');

		$data['heading_title'] = $this->language->get('heading_title');
		$data['text_select'] = $this->language->get('text_select');
		
		$this->load->model('catalog/manufacturer');
		$this->load->model('catalog/product');
		
		$data['display'] = $setting['display'];

		$data['manufacturers'] = array();

		$results = $this->model_catalog_manufacturer->getManufacturers();

		foreach ($results as $result) {
			$product_total = $this->model_catalog_product->getTotalProducts(array('filter_manufacturer_id'  => $result['manufacturer_id']));
			
			if ($this->language->get('direction') == 'rtl') {
				$man_name = ($setting['product_count'] ? ' (' . $product_total . ')' : '') .' '. $result['name'];
			} else {
				$man_name = $result['name'] . ($setting['product_count'] ? ' (' . $product_total . ')' : '');
			}
					
			$data['manufacturers'][] = array(
				'manufacturer_id' 	=> $result['manufacturer_id'],
				'name'        		=> $man_name,
				'href'        		=> $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $result['manufacturer_id']),
			);
		}

		return $this->load->view('extension/module/manufacturer', $data);
		
	}
}