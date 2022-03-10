function converttanggal(input_tanggal) {
    var getDate = new Date(input_tanggal);

    var jam = addZero(getDate.getHours());
    var menit = addZero(getDate.getMinutes());
    var detik = addZero(getDate.getSeconds());

    function addZero(i) {
        if (i < 10) {
            i = "0" + i;
        }
        return i;
    }
    
    var tanggal = getDate.getDate();
    var bulan = getDate.getMonth()+1;
    var tahun = getDate.getFullYear();
    if(tanggal<10){
        tanggal='0'+tanggal;
    } 
    if(bulan<10){
        bulan='0'+bulan;
    } 

    var tgl_indo = tanggal+'-'+bulan+'-'+tahun;

    return tgl_indo;
}

function desimal(nilai) {
    var bilangan = nilai.toString();
    // console.log(bilangan.replace(".", ","));
    return bilangan.replace(".", ",");
}

function angka(nilai){
    var bilangan = nilai;
    var prefix;
    var number_string = bilangan.replace(/[^,\d]/g, '').toString();

    return number_string;
}

function ubahuang(rupiah) {

    var bilangan = rupiah;
    var prefix;
    var number_string = bilangan.replace(/[^,\d]/g, '').toString(),
    split   = number_string.split(','),
    sisa    = split[0].length % 3,
    rupiah  = split[0].substr(0, sisa),
    ribuan  = split[0].substr(sisa).match(/\d{1,3}/gi);
        
    if (ribuan) {
        separator = sisa ? '.' : '';
        rupiah += separator + ribuan.join('.');
    }
    
    rupiah = split[1] != undefined ? rupiah + ',' + split[1] : rupiah;
    return prefix == undefined ? rupiah : (rupiah ? 'Rp. ' + rupiah : '');
}

function convertToAngka(rupiah) {
    return parseInt(rupiah.replace(/,.*|[^0-9]/g, ''), 10);
}

function noenter() {
  return !(window.event && window.event.keyCode == 13); 
}

function converttglindo(tanggal){

 var months = ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];
    var date = new Date(tanggal);
    var day = date.getDate();
    var month = date.getMonth();
    var yy = date.getYear();
    var year = (yy < 1000) ? yy + 1900 : yy;
    return (day + " " + months[month] + " " + year);
}
