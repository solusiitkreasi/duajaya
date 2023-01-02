@extends('layout.main') @section('content')
@if(session()->has('not_permitted'))
  <div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ session()->get('not_permitted') }}</div>
@endif

<section class="forms">
    <div class="container-fluid">
        <div class="card">
            <div class="card-header mt-2">
                <h3 class="text-center">{{trans('file.Supplier Price Report')}}</h3>
            </div>
            {!! Form::open(['route' => 'report.supplierPriceReport', 'method' => 'get']) !!}
            <div class="row mb-3 supplier-price-report-filter">
                <div class="col-md-4 mt-3 offset-md-2 mt-3">
                    <div class="form-group row">
                        <label class="d-tc mt-2"><strong>{{trans('file.Choose Warehouse')}}</strong> &nbsp;</label>
                        <div class="d-tc">
                            <select name="warehouse_id" class="selectpicker form-control" data-live-search="true" data-live-search-style="begins" >
                                <option value="0">{{trans('file.All Warehouse')}}</option>
                                @foreach($lims_warehouse_list as $warehouse)
                                <option value="{{$warehouse->id}}">{{$warehouse->name}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                </div>
                <div class="col-md-2 mt-3">
                    <div class="form-group">
                        <button class="btn btn-primary" type="submit">{{trans('file.submit')}}</button>
                    </div>
                </div>
            </div>
            {!! Form::close() !!}
        </div>
    </div>
    <div class="table-responsive">
        <table id="product-report-table" class="table table-hover" style="width: 100%">
            <thead>
                <tr>
                    <th class="not-exported"></th>
                    <th>{{trans('file.Product Name')}}</th>
                </tr>
            </thead>

        </table>
    </div>
</section>

@endsection

@push('scripts')
<script type="text/javascript">
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    var warehouse_id = <?php echo json_encode($warehouse_id)?>;
    $('.supplier-price-report-filter select[name="warehouse_id"]').val(warehouse_id);
    $('.selectpicker').selectpicker('refresh');



    var warehouse_id = $(".supplier-price-report-filter select[name=warehouse_id]").val();
    $('#supplier-price-report').DataTable( {
        "processing": true,
        "serverSide": true,
        "ajax":{
            url:"supplier_price_report_data",
            data:{
                warehouse_id: warehouse_id
            },
            dataType: "json",
            type:"post",
            /*success:function(data){
                console.log(data);
            }*/
        },
        "columns": [
            {"data": "key"},
            {"data": "name"},
        ],
        'language': {
            'lengthMenu': '_MENU_ {{trans("file.records per page")}}',
            "info":      '<small>{{trans("file.Showing")}} _START_ - _END_ (_TOTAL_)</small>',
            "search":  '{{trans("file.Search")}}',
            'paginate': {
                    'previous': '<i class="dripicons-chevron-left"></i>',
                    'next': '<i class="dripicons-chevron-right"></i>'
            }
        },
        order:[['1', 'asc']],
        'columnDefs': [
            {
                "orderable": false,
                'targets': [0, 2, 3]
            },
            {
                'render': function(data, type, row, meta){
                    if(type === 'display'){
                        data = '<div class="checkbox"><input type="checkbox" class="dt-checkboxes"><label></label></div>';
                    }
                    return data;
                },
                'checkboxes': {
                    'selectRow': true,
                    'selectAllRender': '<div class="checkbox"><input type="checkbox" class="dt-checkboxes"><label></label></div>'
                },
                'targets': [0]
            }
        ],
        'select': { style: 'multi',  selector: 'td:first-child'},
        'lengthMenu': [[10, 25, 50, 100, 500], [10, 25, 50, 100, 500]],

    } );

    var tableAppcp;
	$(document).ready(function() {
		// initialize the datatable

		tableAppcp = $('#product-report-table').DataTable({
			'processing': true,
			'serverSide': true,
			'scrollX': true,
			'ajax': {
                url:"supplier_price_report_data",
                data:{
                    warehouse_id: warehouse_id
                },
                dataType: "json",
                type:"post",
			},
			'order': [0, 'DESC'],
			'columnDefs': [{
					targets: 0,
					className: 'text-center'
				},
				{
					targets: 1,
					className: 'text-left'
				},
			]
		});
		$('.search-input-text').on('keyup', function(event) { // for text boxes
			var i = $(this).attr('data-column'); // getting column index
			var v = $(this).val(); // getting search input value
			var keycode = event.which;
			if (keycode == 13) {
				tableAppcp.columns(i).search(v).draw();
			}
		});
		$('.search-input-select').on('change', function() { // for select box
			var i = $(this).attr('data-column');
			var v = $(this).val();
			tableAppcp.columns(i).search(v).draw();
		});

		$('#nip_user').on('change', function(){ //button filter event click
	        tableAppcp.ajax.reload();  //just reload table
		});

	});

</script>
@endpush
