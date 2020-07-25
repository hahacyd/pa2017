
max:     file format elf32-i386


Disassembly of section .text:

08048094 <start>:
 8048094:	e9 2b 00 00 00       	jmp    80480c4 <main>

08048099 <max>:
 8048099:	55                   	push   %ebp
 804809a:	89 e5                	mov    %esp,%ebp
 804809c:	83 ec 10             	sub    $0x10,%esp
 804809f:	e8 ab 00 00 00       	call   804814f <__x86.get_pc_thunk.ax>
 80480a4:	05 5c 1f 00 00       	add    $0x1f5c,%eax
 80480a9:	8b 45 08             	mov    0x8(%ebp),%eax
 80480ac:	3b 45 0c             	cmp    0xc(%ebp),%eax
 80480af:	7e 08                	jle    80480b9 <max+0x20>
 80480b1:	8b 45 08             	mov    0x8(%ebp),%eax
 80480b4:	89 45 fc             	mov    %eax,-0x4(%ebp)
 80480b7:	eb 06                	jmp    80480bf <max+0x26>
 80480b9:	8b 45 0c             	mov    0xc(%ebp),%eax
 80480bc:	89 45 fc             	mov    %eax,-0x4(%ebp)
 80480bf:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80480c2:	c9                   	leave  
 80480c3:	c3                   	ret    

080480c4 <main>:
 80480c4:	55                   	push   %ebp
 80480c5:	89 e5                	mov    %esp,%ebp
 80480c7:	53                   	push   %ebx
 80480c8:	83 ec 10             	sub    $0x10,%esp
 80480cb:	e8 83 00 00 00       	call   8048153 <__x86.get_pc_thunk.bx>
 80480d0:	81 c3 30 1f 00 00    	add    $0x1f30,%ebx
 80480d6:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 80480dd:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 80480e4:	eb 51                	jmp    8048137 <main+0x73>
 80480e6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 80480ed:	eb 3d                	jmp    804812c <main+0x68>
 80480ef:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80480f2:	8b 94 83 20 00 00 00 	mov    0x20(%ebx,%eax,4),%edx
 80480f9:	8b 45 f8             	mov    -0x8(%ebp),%eax
 80480fc:	8b 84 83 20 00 00 00 	mov    0x20(%ebx,%eax,4),%eax
 8048103:	52                   	push   %edx
 8048104:	50                   	push   %eax
 8048105:	e8 8f ff ff ff       	call   8048099 <max>
 804810a:	83 c4 08             	add    $0x8,%esp
 804810d:	89 c1                	mov    %eax,%ecx
 804810f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048112:	8d 50 01             	lea    0x1(%eax),%edx
 8048115:	89 55 f0             	mov    %edx,-0x10(%ebp)
 8048118:	8b 84 83 40 00 00 00 	mov    0x40(%ebx,%eax,4),%eax
 804811f:	39 c1                	cmp    %eax,%ecx
 8048121:	74 06                	je     8048129 <main+0x65>
 8048123:	b8 01 00 00 00       	mov    $0x1,%eax
 8048128:	82 ff 45             	cmp    $0x45,%bh
 804812b:	f4                   	hlt    
 804812c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804812f:	83 f8 07             	cmp    $0x7,%eax
 8048132:	76 bb                	jbe    80480ef <main+0x2b>
 8048134:	ff 45 f8             	incl   -0x8(%ebp)
 8048137:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804813a:	83 f8 07             	cmp    $0x7,%eax
 804813d:	76 a7                	jbe    80480e6 <main+0x22>
 804813f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048144:	82 b8 00 00 00 00 8b 	cmpb   $0x8b,0x0(%eax)
 804814b:	5d                   	pop    %ebp
 804814c:	fc                   	cld    
 804814d:	c9                   	leave  
 804814e:	c3                   	ret    

0804814f <__x86.get_pc_thunk.ax>:
 804814f:	8b 04 24             	mov    (%esp),%eax
 8048152:	c3                   	ret    

08048153 <__x86.get_pc_thunk.bx>:
 8048153:	8b 1c 24             	mov    (%esp),%ebx
 8048156:	c3                   	ret    
