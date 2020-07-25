
add:     file format elf32-i386


Disassembly of section .text:

08048094 <start>:
 8048094:	e9 20 00 00 00       	jmp    80480b9 <main>

08048099 <add>:
 8048099:	55                   	push   %ebp
 804809a:	89 e5                	mov    %esp,%ebp
 804809c:	83 ec 10             	sub    $0x10,%esp
 804809f:	e8 b8 00 00 00       	call   804815c <__x86.get_pc_thunk.ax>
 80480a4:	05 5c 1f 00 00       	add    $0x1f5c,%eax
 80480a9:	8b 55 08             	mov    0x8(%ebp),%edx
 80480ac:	8b 45 0c             	mov    0xc(%ebp),%eax
 80480af:	01 d0                	add    %edx,%eax
 80480b1:	89 45 fc             	mov    %eax,-0x4(%ebp)
 80480b4:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80480b7:	c9                   	leave  
 80480b8:	c3                   	ret    

080480b9 <main>:
 80480b9:	55                   	push   %ebp
 80480ba:	89 e5                	mov    %esp,%ebp
 80480bc:	53                   	push   %ebx
 80480bd:	83 ec 10             	sub    $0x10,%esp
 80480c0:	e8 9b 00 00 00       	call   8048160 <__x86.get_pc_thunk.bx>
 80480c5:	81 c3 3b 1f 00 00    	add    $0x1f3b,%ebx
 80480cb:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 80480d2:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 80480d9:	eb 51                	jmp    804812c <main+0x73>
 80480db:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 80480e2:	eb 3d                	jmp    8048121 <main+0x68>
 80480e4:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80480e7:	8b 94 83 20 00 00 00 	mov    0x20(%ebx,%eax,4),%edx
 80480ee:	8b 45 f8             	mov    -0x8(%ebp),%eax
 80480f1:	8b 84 83 20 00 00 00 	mov    0x20(%ebx,%eax,4),%eax
 80480f8:	52                   	push   %edx
 80480f9:	50                   	push   %eax
 80480fa:	e8 9a ff ff ff       	call   8048099 <add>
 80480ff:	83 c4 08             	add    $0x8,%esp
 8048102:	89 c1                	mov    %eax,%ecx
 8048104:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048107:	8d 50 01             	lea    0x1(%eax),%edx
 804810a:	89 55 f0             	mov    %edx,-0x10(%ebp)
 804810d:	8b 84 83 40 00 00 00 	mov    0x40(%ebx,%eax,4),%eax
 8048114:	39 c1                	cmp    %eax,%ecx
 8048116:	74 06                	je     804811e <main+0x65>
 8048118:	b8 01 00 00 00       	mov    $0x1,%eax
 804811d:	82 ff 45             	cmp    $0x45,%bh
 8048120:	f4                   	hlt    
 8048121:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048124:	83 f8 07             	cmp    $0x7,%eax
 8048127:	76 bb                	jbe    80480e4 <main+0x2b>
 8048129:	ff 45 f8             	incl   -0x8(%ebp)
 804812c:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804812f:	83 f8 07             	cmp    $0x7,%eax
 8048132:	76 a7                	jbe    80480db <main+0x22>
 8048134:	83 7d f8 08          	cmpl   $0x8,-0x8(%ebp)
 8048138:	74 06                	je     8048140 <main+0x87>
 804813a:	b8 01 00 00 00       	mov    $0x1,%eax
 804813f:	82 83 7d f4 08 74 06 	addb   $0x6,0x7408f47d(%ebx)
 8048146:	b8 01 00 00 00       	mov    $0x1,%eax
 804814b:	82 b8 00 00 00 00 82 	cmpb   $0x82,0x0(%eax)
 8048152:	b8 00 00 00 00       	mov    $0x0,%eax
 8048157:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 804815a:	c9                   	leave  
 804815b:	c3                   	ret    

0804815c <__x86.get_pc_thunk.ax>:
 804815c:	8b 04 24             	mov    (%esp),%eax
 804815f:	c3                   	ret    

08048160 <__x86.get_pc_thunk.bx>:
 8048160:	8b 1c 24             	mov    (%esp),%ebx
 8048163:	c3                   	ret    
