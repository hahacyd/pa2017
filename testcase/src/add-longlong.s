
add-longlong:     file format elf32-i386


Disassembly of section .text:

00030000 <start>:
   30000:	e9 4b 00 00 00       	jmp    30050 <main>

00030005 <add>:
   30005:	55                   	push   %ebp
   30006:	89 e5                	mov    %esp,%ebp
   30008:	53                   	push   %ebx
   30009:	83 ec 24             	sub    $0x24,%esp
   3000c:	e8 14 01 00 00       	call   30125 <__x86.get_pc_thunk.ax>
   30011:	05 ef 1f 00 00       	add    $0x1fef,%eax
   30016:	8b 45 08             	mov    0x8(%ebp),%eax
   30019:	89 45 e0             	mov    %eax,-0x20(%ebp)
   3001c:	8b 45 0c             	mov    0xc(%ebp),%eax
   3001f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   30022:	8b 45 10             	mov    0x10(%ebp),%eax
   30025:	89 45 d8             	mov    %eax,-0x28(%ebp)
   30028:	8b 45 14             	mov    0x14(%ebp),%eax
   3002b:	89 45 dc             	mov    %eax,-0x24(%ebp)
   3002e:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   30031:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
   30034:	8b 45 d8             	mov    -0x28(%ebp),%eax
   30037:	8b 55 dc             	mov    -0x24(%ebp),%edx
   3003a:	01 c8                	add    %ecx,%eax
   3003c:	11 da                	adc    %ebx,%edx
   3003e:	89 45 f0             	mov    %eax,-0x10(%ebp)
   30041:	89 55 f4             	mov    %edx,-0xc(%ebp)
   30044:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30047:	8b 55 f4             	mov    -0xc(%ebp),%edx
   3004a:	83 c4 24             	add    $0x24,%esp
   3004d:	5b                   	pop    %ebx
   3004e:	5d                   	pop    %ebp
   3004f:	c3                   	ret    

00030050 <main>:
   30050:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   30054:	83 e4 f8             	and    $0xfffffff8,%esp
   30057:	ff 71 fc             	pushl  -0x4(%ecx)
   3005a:	55                   	push   %ebp
   3005b:	89 e5                	mov    %esp,%ebp
   3005d:	57                   	push   %edi
   3005e:	56                   	push   %esi
   3005f:	53                   	push   %ebx
   30060:	51                   	push   %ecx
   30061:	83 ec 18             	sub    $0x18,%esp
   30064:	e8 c0 00 00 00       	call   30129 <__x86.get_pc_thunk.si>
   30069:	81 c6 97 1f 00 00    	add    $0x1f97,%esi
   3006f:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
   30076:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
   3007d:	e9 80 00 00 00       	jmp    30102 <main+0xb2>
   30082:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
   30089:	eb 6c                	jmp    300f7 <main+0xa7>
   3008b:	8b 45 e8             	mov    -0x18(%ebp),%eax
   3008e:	8b 8c c6 20 00 00 00 	mov    0x20(%esi,%eax,8),%ecx
   30095:	8b 9c c6 24 00 00 00 	mov    0x24(%esi,%eax,8),%ebx
   3009c:	8b 45 ec             	mov    -0x14(%ebp),%eax
   3009f:	8b 94 c6 24 00 00 00 	mov    0x24(%esi,%eax,8),%edx
   300a6:	8b 84 c6 20 00 00 00 	mov    0x20(%esi,%eax,8),%eax
   300ad:	53                   	push   %ebx
   300ae:	51                   	push   %ecx
   300af:	52                   	push   %edx
   300b0:	50                   	push   %eax
   300b1:	e8 4f ff ff ff       	call   30005 <add>
   300b6:	83 c4 10             	add    $0x10,%esp
   300b9:	89 c1                	mov    %eax,%ecx
   300bb:	89 d3                	mov    %edx,%ebx
   300bd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   300c0:	8d 50 01             	lea    0x1(%eax),%edx
   300c3:	89 55 e4             	mov    %edx,-0x1c(%ebp)
   300c6:	8b 94 c6 64 00 00 00 	mov    0x64(%esi,%eax,8),%edx
   300cd:	8b 84 c6 60 00 00 00 	mov    0x60(%esi,%eax,8),%eax
   300d4:	89 cf                	mov    %ecx,%edi
   300d6:	31 c7                	xor    %eax,%edi
   300d8:	89 7d d8             	mov    %edi,-0x28(%ebp)
   300db:	31 d3                	xor    %edx,%ebx
   300dd:	89 5d dc             	mov    %ebx,-0x24(%ebp)
   300e0:	8b 55 d8             	mov    -0x28(%ebp),%edx
   300e3:	8b 4d dc             	mov    -0x24(%ebp),%ecx
   300e6:	89 c8                	mov    %ecx,%eax
   300e8:	09 d0                	or     %edx,%eax
   300ea:	85 c0                	test   %eax,%eax
   300ec:	74 06                	je     300f4 <main+0xa4>
   300ee:	b8 01 00 00 00       	mov    $0x1,%eax
   300f3:	82 ff 45             	cmp    $0x45,%bh
   300f6:	e8 8b 45 e8 83       	call   83eb4686 <__bss_start+0x83e82426>
   300fb:	f8                   	clc    
   300fc:	07                   	pop    %es
   300fd:	76 8c                	jbe    3008b <main+0x3b>
   300ff:	ff 45 ec             	incl   -0x14(%ebp)
   30102:	8b 45 ec             	mov    -0x14(%ebp),%eax
   30105:	83 f8 07             	cmp    $0x7,%eax
   30108:	0f 86 74 ff ff ff    	jbe    30082 <main+0x32>
   3010e:	b8 00 00 00 00       	mov    $0x0,%eax
   30113:	82 b8 00 00 00 00 8d 	cmpb   $0x8d,0x0(%eax)
   3011a:	65 f0 59             	gs lock pop %ecx
   3011d:	5b                   	pop    %ebx
   3011e:	5e                   	pop    %esi
   3011f:	5f                   	pop    %edi
   30120:	5d                   	pop    %ebp
   30121:	8d 61 fc             	lea    -0x4(%ecx),%esp
   30124:	c3                   	ret    

00030125 <__x86.get_pc_thunk.ax>:
   30125:	8b 04 24             	mov    (%esp),%eax
   30128:	c3                   	ret    

00030129 <__x86.get_pc_thunk.si>:
   30129:	8b 34 24             	mov    (%esp),%esi
   3012c:	c3                   	ret    
