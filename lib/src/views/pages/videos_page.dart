import 'package:flutter/material.dart';
import 'videos/Long_Video.dart';

class VideosPage extends StatefulWidget {
  const VideosPage({super.key});

  @override
  State<VideosPage> createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  // ignore: unused_field

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          TemplateLongVideo(
              urlVideo:
                  'https://video-ams2-1.xx.fbcdn.net/o1/v/t2/f1/m69/GC777heKaPpKfUwBAE6-iGYWYCUwbmdjAAAF.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6Im9lcF9oZCJ9&_nc_ht=video-ams2-1.xx.fbcdn.net&_nc_cat=101&strext=1&vs=27eb4820720221f0&_nc_vs=HBksFQIYOnBhc3N0aHJvdWdoX2V2ZXJzdG9yZS9HQzc3N2hlS2FQcEtmVXdCQUU2LWlHWVdZQ1V3Ym1kakFBQUYVAALIAQAVAhg6cGFzc3Rocm91Z2hfZXZlcnN0b3JlL0dBVlA2eGYyMXdSSXdma0RBRU9rb1NRU1ZqdENidjRHQUFBRhUCAsgBAEsHiBJwcm9ncmVzc2l2ZV9yZWNpcGUBMQ1zdWJzYW1wbGVfZnBzABB2bWFmX2VuYWJsZV9uc3ViACBtZWFzdXJlX29yaWdpbmFsX3Jlc29sdXRpb25fc3NpbQAoY29tcHV0ZV9zc2ltX29ubHlfYXRfb3JpZ2luYWxfcmVzb2x1dGlvbgAddXNlX2xhbmN6b3NfZm9yX3ZxbV91cHNjYWxpbmcAEWRpc2FibGVfcG9zdF9wdnFzABUAJQAcjBdAAAAAAAAAABERAAAAJubrht6m%2BsgDFQIoAkMyGAt2dHNfcHJldmlldxwXQEDqn752yLQYIWRhc2hfZ2VuMmh3YmFzaWNfaHEyX2ZyYWdfMl92aWRlbxIAGBh2aWRlb3MudnRzLmNhbGxiYWNrLnByb2Q4ElZJREVPX1ZJRVdfUkVRVUVTVBsKiBVvZW1fdGFyZ2V0X2VuY29kZV90YWcGb2VwX2hkE29lbV9yZXF1ZXN0X3RpbWVfbXMBMAxvZW1fY2ZnX3J1bGUHdW5tdXRlZBNvZW1fcm9pX3JlYWNoX2NvdW50BzIxMzIwODQRb2VtX2lzX2V4cGVyaW1lbnQADG9lbV92aWRlb19pZBAxMDA1NjY1Mjk3MTMxMzE2Em9lbV92aWRlb19hc3NldF9pZA83MjU1MzY1NTk0NDEwMTMVb2VtX3ZpZGVvX3Jlc291cmNlX2lkEDEwMDQ4NTU3NDc0NjgwMTkcb2VtX3NvdXJjZV92aWRlb19lbmNvZGluZ19pZA8zNTcxMTQxNjAxMjU4NzUOdnRzX3JlcXVlc3RfaWQAJQIcACW%2BARsHiAFzBDI3NjACY2QKMjAyMy0xMS0xMwNyY2IHMjEzMjAwMANhcHATRmFjZWJvb2sgZm9yIGlQaG9uZQJjdBlDT05UQUlORURfUE9TVF9BVFRBQ0hNRU5UE29yaWdpbmFsX2R1cmF0aW9uX3MGMzMuODM0AnRzFXByb2dyZXNzaXZlX2VuY29kaW5ncwA%3D&ccb=9-4&oh=00_AfAH5-Do4o8mA5_2kOQx_yxUaGEr2U5B2ZccHPiesZEV6g&oe=65B0F256&_nc_sid=1d576d&_nc_rid=014537416912879&_nc_store_type=1&dl=1',
              title: 'Video 1'),
          TemplateLongVideo(
              urlVideo:
                  'https://video-ams2-1.xx.fbcdn.net/o1/v/t2/f1/m69/GGTg4xcPopS0O8AAAKqmKw7skaNzbmdjAAAF.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6Im9lcF9oZCJ9&_nc_ht=video-ams2-1.xx.fbcdn.net&_nc_cat=107&strext=1&vs=4ba64c0c87beb959&_nc_vs=HBksFQIYOnBhc3N0aHJvdWdoX2V2ZXJzdG9yZS9HR1RnNHhjUG9wUzBPOEFBQUtxbUt3N3NrYU56Ym1kakFBQUYVAALIAQAVAhg6cGFzc3Rocm91Z2hfZXZlcnN0b3JlL0dOcUE2UmY5UzI0RVMxWUhBQXg1YUIzZXY2NVhidjRHQUFBRhUCAsgBAEsHiBJwcm9ncmVzc2l2ZV9yZWNpcGUBMQ1zdWJzYW1wbGVfZnBzABB2bWFmX2VuYWJsZV9uc3ViACBtZWFzdXJlX29yaWdpbmFsX3Jlc29sdXRpb25fc3NpbQAoY29tcHV0ZV9zc2ltX29ubHlfYXRfb3JpZ2luYWxfcmVzb2x1dGlvbgAddXNlX2xhbmN6b3NfZm9yX3ZxbV91cHNjYWxpbmcAEWRpc2FibGVfcG9zdF9wdnFzABUAJQAcjBdAAAAAAAAAABERAAAAJu6f1qqEkogDFQIoAkMzGAt2dHNfcHJldmlldxwXQEZLAgxJul4YIWRhc2hfZ2VuMmh3YmFzaWNfaHEyX2ZyYWdfMl92aWRlbxIAGBh2aWRlb3MudnRzLmNhbGxiYWNrLnByb2Q4ElZJREVPX1ZJRVdfUkVRVUVTVBsKiBVvZW1fdGFyZ2V0X2VuY29kZV90YWcGb2VwX2hkE29lbV9yZXF1ZXN0X3RpbWVfbXMBMAxvZW1fY2ZnX3J1bGUHdW5tdXRlZBNvZW1fcm9pX3JlYWNoX2NvdW50BjIzODUxNhFvZW1faXNfZXhwZXJpbWVudAAMb2VtX3ZpZGVvX2lkEDEwNDg5Mjg3MTY1NjIxMzASb2VtX3ZpZGVvX2Fzc2V0X2lkEDEzODkzMzY3NjUzMzM4ODEVb2VtX3ZpZGVvX3Jlc291cmNlX2lkDzg2MjMyNjkzNTQzOTM1MRxvZW1fc291cmNlX3ZpZGVvX2VuY29kaW5nX2lkDzg4MTc5NzYwMDI0MDAwNQ52dHNfcmVxdWVzdF9pZAAlAhwAJb4BGweIAXMENDk0NgJjZAoyMDIzLTExLTEyA3JjYgYyMzg1MDADYXBwBVZpZGVvAmN0GUNPTlRBSU5FRF9QT1NUX0FUVEFDSE1FTlQTb3JpZ2luYWxfZHVyYXRpb25fcwk0NC42MjkzMzMCdHMVcHJvZ3Jlc3NpdmVfZW5jb2RpbmdzAA%3D%3D&ccb=9-4&oh=00_AfDzFSc3og6q4uT-104uX3158FNrWpKdcO2IQV2r7IHpCA&oe=65B0852E&_nc_sid=1d576d&_nc_rid=899813242953677&_nc_store_type=1&dl=1',
              title: 'Video 2'),
          TemplateLongVideo(
              urlVideo:
                  'https://d.rapidcdn.app/d?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1cmwiOiJodHRwczovL2FwaTE2LW5vcm1hbC1jLXVzZWFzdDFhLnRpa3Rva3YuY29tL2F3ZW1lL3YxL3BsYXkvP3ZpZGVvX2lkPXYxMDAyNWc1MDAwMGNtOXY0MzdvZzY1dHJzaDA5a21nJmxpbmU9MCZpc19wbGF5X3VybD0xJnNvdXJjZT1QYWNrU291cmNlRW51bV9BV0VNRV9ERVRBSUwmZmlsZV9pZD01OWIyZmZlNjBkY2Q0ZTAyOWI2MGY0ZmM1NmJkOTY3MyZpdGVtX2lkPTczMTk0NjAwODQ3MDkzNjI5NDYmc2lnbmF0dXJldjM9ZG1sa1pXOWZhV1E3Wm1sc1pWOXBaRHRwZEdWdFgybGtMbVkxTnpNelltVTJZamhsT0Raak5XVXdNVFJpWWpnME9XRXpORFkxTm1VMSIsImZpbGVuYW1lIjoiU25hcHRpay5hcHBfNzMxOTQ2MDA4NDcwOTM2Mjk0Ni5tcDQiLCJoZWFkZXJzIjp7InVzZXItYWdlbnQiOiJUZWxlZ3JhbUJvdCAobGlrZSBUd2l0dGVyQm90KSJ9fQ.E13YXju4IwXjql8YY5UjYAtR_vR0I5TJOKvOsn6fKU0&dl=1',
              title: 'Video 3'),
          TemplateLongVideo(
              urlVideo:
                  'https://video-ber1-1.xx.fbcdn.net/o1/v/t2/f1/m69/GL4IChn8TnR5lWMFAMsiO0rI5l8cbmdjAAAF.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6Im9lcF9oZCJ9&_nc_ht=video-ber1-1.xx.fbcdn.net&_nc_cat=109&strext=1&vs=687ca8108d757800&_nc_vs=HBksFQIYOnBhc3N0aHJvdWdoX2V2ZXJzdG9yZS9HTDRJQ2huOFRuUjVsV01GQU1zaU8wckk1bDhjYm1kakFBQUYVAALIAQAVAhg6cGFzc3Rocm91Z2hfZXZlcnN0b3JlL0dJREctQmhKVmY2am1uY0ZBTzFPOHdiZzBhZFNidjRHQUFBRhUCAsgBAEsHiBJwcm9ncmVzc2l2ZV9yZWNpcGUBMQ1zdWJzYW1wbGVfZnBzABB2bWFmX2VuYWJsZV9uc3ViACBtZWFzdXJlX29yaWdpbmFsX3Jlc29sdXRpb25fc3NpbQAoY29tcHV0ZV9zc2ltX29ubHlfYXRfb3JpZ2luYWxfcmVzb2x1dGlvbgAddXNlX2xhbmN6b3NfZm9yX3ZxbV91cHNjYWxpbmcAEWRpc2FibGVfcG9zdF9wdnFzABUAJQAcjBdAAAAAAAAAABERAAAAJuCNiqKkvq0CFQIoAkMzGAt2dHNfcHJldmlldxwXQD9EGJN0vGoYIWRhc2hfZ2VuMmh3YmFzaWNfaHEyX2ZyYWdfMl92aWRlbxIAGBh2aWRlb3MudnRzLmNhbGxiYWNrLnByb2Q4ElZJREVPX1ZJRVdfUkVRVUVTVBsKiBVvZW1fdGFyZ2V0X2VuY29kZV90YWcGb2VwX2hkE29lbV9yZXF1ZXN0X3RpbWVfbXMBMAxvZW1fY2ZnX3J1bGUHdW5tdXRlZBNvZW1fcm9pX3JlYWNoX2NvdW50BzEzMDUxMzgRb2VtX2lzX2V4cGVyaW1lbnQADG9lbV92aWRlb19pZA8zNzYzMTE5NTgzMzQyMzcSb2VtX3ZpZGVvX2Fzc2V0X2lkDzM4MzM1MTY2NDI0OTY5NRVvZW1fdmlkZW9fcmVzb3VyY2VfaWQPNjYyOTc2MDE5MzgzMTUyHG9lbV9zb3VyY2VfdmlkZW9fZW5jb2RpbmdfaWQQNzEzNjQ0MzEwOTgxODI0MA52dHNfcmVxdWVzdF9pZAAlAhwAJb4BGweIAXMDMzg4AmNkCjIwMjQtMDEtMTYDcmNiBzEzMDUxMDADYXBwBVZpZGVvAmN0GUNPTlRBSU5FRF9QT1NUX0FUVEFDSE1FTlQTb3JpZ2luYWxfZHVyYXRpb25fcwYzMS4zNjkCdHMVcHJvZ3Jlc3NpdmVfZW5jb2RpbmdzAA%3D%3D&ccb=9-4&oh=00_AfD3P_7itIN9ke8Ijv7krudx9Y1npZmSHraTKFWos0TSog&oe=65B06DA5&_nc_sid=1d576d&_nc_rid=599818144245194&_nc_store_type=1&dl=1',
              title: 'Video 4'),
        ]),
      ),
    );
  }
}

String truncateWithEllipsis(String text, int maxLength) {
  return (text.length <= maxLength)
      ? text
      : '${text.substring(0, maxLength)}...';
}
