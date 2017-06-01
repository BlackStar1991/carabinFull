<?php
class ControllerExtensionModuleSearchQuickOpencartsu extends Controller {
	private $error = array();
	public function index() {
		$this->load->language('module/search_quick_opencartsu');
		$this->document->setTitle($this->language->get('heading_title'));
		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('searchquickopencartsu', $this->request->post);
			$this->session->data['success'] = $this->language->get('text_success');
			$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$data['heading_title'] = $this->language->get('heading_title');
		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['text_status'] = $this->language->get('text_status');
		$data['text_img'] = $this->language->get('text_img');
		$data['text_imgwidth'] = $this->language->get('text_imgwidth');
		$data['text_imgheight'] = $this->language->get('text_imgheight');
		$data['text_price'] = $this->language->get('text_price');
		$data['text_quantity'] = $this->language->get('text_quantity');
		$data['text_maxquery'] = $this->language->get('text_maxquery');
		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}


		$data['breadcrumbs'] = array();
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_module'),
			'href' => $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('extension/module/search_quick_opencartsu', 'token=' . $this->session->data['token'], true)
		);

		
		
		$data['action'] = $this->url->link('extension/module/search_quick_opencartsu', 'token=' . $this->session->data['token'], true);
		$data['cancel'] = $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true);

        // status module
		if (isset($this->request->post['searchquickopencartsu_status'])) {
			$data['searchquickopencartsu_status'] = $this->request->post['searchquickopencartsu_status'];
		} else {
			$data['searchquickopencartsu_status'] = $this->config->get('searchquickopencartsu_status');
		}

        // вывод картинок в поиске
        if (isset($this->request->post['searchquickopencartsu_img'])) {
			$data['searchquickopencartsu_img'] = $this->request->post['searchquickopencartsu_img'];
		} else {
			$data['searchquickopencartsu_img'] = $this->config->get('searchquickopencartsu_img');
		}

        // ширина картинок в поиске
        if (isset($this->request->post['searchquickopencartsu_imgwidth'])) {
			$data['searchquickopencartsu_imgwidth'] = $this->request->post['searchquickopencartsu_imgwidth'];
		} else {
			$data['searchquickopencartsu_imgwidth'] = $this->config->get('searchquickopencartsu_imgwidth');
		}
        if($data['searchquickopencartsu_imgwidth']<5) {$data['searchquickopencartsu_imgwidth']=30;}

        // высота картинок в поиске
        if (isset($this->request->post['searchquickopencartsu_imgheight'])) {
			$data['searchquickopencartsu_imgheight'] = $this->request->post['searchquickopencartsu_imgheight'];
		} else {
			$data['searchquickopencartsu_imgheight'] = $this->config->get('searchquickopencartsu_imgheight');
		}
        if($data['searchquickopencartsu_imgheight']<5) {$data['searchquickopencartsu_imgheight']=30;}

        // вывод цены в поиске
        if (isset($this->request->post['searchquickopencartsu_price'])) {
			$data['searchquickopencartsu_price'] = $this->request->post['searchquickopencartsu_price'];
		} else {
			$data['searchquickopencartsu_price'] = $this->config->get('searchquickopencartsu_price');
		}

        // вывод кол-ва в поиске
        if (isset($this->request->post['searchquickopencartsu_quantity'])) {
			$data['searchquickopencartsu_quantity'] = $this->request->post['searchquickopencartsu_quantity'];
		} else {
			$data['searchquickopencartsu_quantity'] = $this->config->get('searchquickopencartsu_quantity');
		}

        // сколько товаров максимум показывать поиске
        if (isset($this->request->post['searchquickopencartsu_maxquery'])) {
			$data['searchquickopencartsu_maxquery'] = $this->request->post['searchquickopencartsu_maxquery'];
		} else {
			$data['searchquickopencartsu_maxquery'] = $this->config->get('searchquickopencartsu_maxquery');
		}

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
		$this->response->setOutput($this->load->view('extension/module/search_quick_opencartsu.tpl', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'extension/module/search_quick_opencartsu')) {
			$this->error['warning'] = $this->language->get('error_access');
		}
		return !$this->error;
	}
}
?>