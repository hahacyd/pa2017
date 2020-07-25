
shuixianhua:     file format elf32-i386


Disassembly of section .text:

00030000 <start>:
   30000:	e9 1a 00 00 00       	jmp    3001f <main>

00030005 <cube>:
   30005:	55                   	push   %ebp
   30006:	89 e5                	mov    %esp,%ebp
   30008:	e8 15 01 00 00       	call   30122 <__x86.get_pc_thunk.ax>
   3000d:	05 f3 1f 00 00       	add    $0x1ff3,%eax
   30012:	8b 45 08             	mov    0x8(%ebp),%eax
   30015:	0f af 45 08          	imul   0x8(%ebp),%eax
   30019:	0f af 45 08          	imul   0x8(%ebp),%eax
   3001d:	5d                   	pop    %ebp
   3001e:	c3                   	ret    

0003001f <main>:
   3001f:	55                   	push   %ebp
   30020:	89 e5                	mov    %esp,%ebp
   30022:	56                   	push   %esi
   30023:	53                   	push   %ebx
   30024:	51                   	push   %ecx
   30025:	83 ec 20             	sub    $0x20,%esp
   30028:	8d 4d 08             	lea    0x8(%ebp),%ecx
   3002b:	e8 f6 00 00 00       	call   30126 <__x86.get_pc_thunk.bx>
   30030:	81 c3 d0 1f 00 00    	add    $0x1fd0,%ebx
   30036:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
   3003d:	c7 45 f0 64 00 00 00 	movl   $0x64,-0x10(%ebp)
   30044:	e9 ad 00 00 00       	jmp    300f6 <main+0xd7>
   30049:	8b 4d f0             	mov    -0x10(%ebp),%ecx
   3004c:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
   30051:	f7 e9                	imul   %ecx
   30053:	c1 fa 05             	sar    $0x5,%edx
   30056:	89 c8                	mov    %ecx,%eax
   30058:	c1 f8 1f             	sar    $0x1f,%eax
   3005b:	29 c2                	sub    %eax,%edx
   3005d:	89 d0                	mov    %edx,%eax
   3005f:	89 45 e8             	mov    %eax,-0x18(%ebp)
   30062:	8b 4d f0             	mov    -0x10(%ebp),%ecx
   30065:	b8 67 66 66 66       	mov    $0x66666667,%eax
   3006a:	f7 e9                	imul   %ecx
   3006c:	c1 fa 02             	sar    $0x2,%edx
   3006f:	89 c8                	mov    %ecx,%eax
   30071:	c1 f8 1f             	sar    $0x1f,%eax
   30074:	89 d1                	mov    %edx,%ecx
   30076:	29 c1                	sub    %eax,%ecx
   30078:	b8 67 66 66 66       	mov    $0x66666667,%eax
   3007d:	f7 e9                	imul   %ecx
   3007f:	c1 fa 02             	sar    $0x2,%edx
   30082:	89 c8                	mov    %ecx,%eax
   30084:	c1 f8 1f             	sar    $0x1f,%eax
   30087:	29 c2                	sub    %eax,%edx
   30089:	89 d0                	mov    %edx,%eax
   3008b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   3008e:	8b 55 e4             	mov    -0x1c(%ebp),%edx
   30091:	89 d0                	mov    %edx,%eax
   30093:	c1 e0 02             	shl    $0x2,%eax
   30096:	01 d0                	add    %edx,%eax
   30098:	01 c0                	add    %eax,%eax
   3009a:	29 c1                	sub    %eax,%ecx
   3009c:	89 c8                	mov    %ecx,%eax
   3009e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   300a1:	8b 45 f0             	mov    -0x10(%ebp),%eax
   300a4:	b9 0a 00 00 00       	mov    $0xa,%ecx
   300a9:	99                   	cltd   
   300aa:	f7 f9                	idiv   %ecx
   300ac:	89 55 e0             	mov    %edx,-0x20(%ebp)
   300af:	ff 75 e8             	pushl  -0x18(%ebp)
   300b2:	e8 4e ff ff ff       	call   30005 <cube>
   300b7:	83 c4 04             	add    $0x4,%esp
   300ba:	89 c6                	mov    %eax,%esi
   300bc:	ff 75 e4             	pushl  -0x1c(%ebp)
   300bf:	e8 41 ff ff ff       	call   30005 <cube>
   300c4:	83 c4 04             	add    $0x4,%esp
   300c7:	01 c6                	add    %eax,%esi
   300c9:	ff 75 e0             	pushl  -0x20(%ebp)
   300cc:	e8 34 ff ff ff       	call   30005 <cube>
   300d1:	83 c4 04             	add    $0x4,%esp
   300d4:	01 f0                	add    %esi,%eax
   300d6:	3b 45 f0             	cmp    -0x10(%ebp),%eax
   300d9:	75 18                	jne    300f3 <main+0xd4>
   300db:	8b 45 ec             	mov    -0x14(%ebp),%eax
   300de:	8b 84 83 0c 00 00 00 	mov    0xc(%ebx,%eax,4),%eax
   300e5:	3b 45 f0             	cmp    -0x10(%ebp),%eax
   300e8:	74 06                	je     300f0 <main+0xd1>
   300ea:	b8 01 00 00 00       	mov    $0x1,%eax
   300ef:	82 ff 45             	cmp    $0x45,%bh
   300f2:	ec                   	in     (%dx),%al
   300f3:	ff 45 f0             	incl   -0x10(%ebp)
   300f6:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
   300fd:	0f 8e 46 ff ff ff    	jle    30049 <main+0x2a>
   30103:	83 7d ec 04          	cmpl   $0x4,-0x14(%ebp)
   30107:	74 06                	je     3010f <main+0xf0>
   30109:	b8 01 00 00 00       	mov    $0x1,%eax
   3010e:	82 b8 00 00 00 00 82 	cmpb   $0x82,0x0(%eax)
   30115:	b8 00 00 00 00       	mov    $0x0,%eax
   3011a:	8d 65 f4             	lea    -0xc(%ebp),%esp
   3011d:	59                   	pop    %ecx
   3011e:	5b                   	pop    %ebx
   3011f:	5e                   	pop    %esi
   30120:	5d                   	pop    %ebp
   30121:	c3                   	ret    

00030122 <__x86.get_pc_thunk.ax>:
   30122:	8b 04 24             	mov    (%esp),%eax
   30125:	c3                   	ret    

00030126 <__x86.get_pc_thunk.bx>:
   30126:	8b 1c 24             	mov    (%esp),%ebx
   30129:	c3                   	ret    
