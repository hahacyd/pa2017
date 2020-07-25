
matrix-mul-small:     file format elf32-i386


Disassembly of section .text:

00030000 <start>:
   30000:	e9 00 00 00 00       	jmp    30005 <main>

00030005 <main>:
   30005:	55                   	push   %ebp
   30006:	89 e5                	mov    %esp,%ebp
   30008:	56                   	push   %esi
   30009:	53                   	push   %ebx
   3000a:	83 ec 10             	sub    $0x10,%esp
   3000d:	e8 20 01 00 00       	call   30132 <__x86.get_pc_thunk.dx>
   30012:	81 c2 ee 1f 00 00    	add    $0x1fee,%edx
   30018:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   3001f:	e9 f2 00 00 00       	jmp    30116 <main+0x111>
   30024:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
   3002b:	e9 d9 00 00 00       	jmp    30109 <main+0x104>
   30030:	c7 c1 00 25 03 00    	mov    $0x32500,%ecx
   30036:	8b 5d f4             	mov    -0xc(%ebp),%ebx
   30039:	89 d8                	mov    %ebx,%eax
   3003b:	c1 e0 02             	shl    $0x2,%eax
   3003e:	01 d8                	add    %ebx,%eax
   30040:	01 c0                	add    %eax,%eax
   30042:	8b 5d f0             	mov    -0x10(%ebp),%ebx
   30045:	01 d8                	add    %ebx,%eax
   30047:	c7 04 81 00 00 00 00 	movl   $0x0,(%ecx,%eax,4)
   3004e:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
   30055:	eb 6d                	jmp    300c4 <main+0xbf>
   30057:	c7 c1 00 25 03 00    	mov    $0x32500,%ecx
   3005d:	8b 5d f4             	mov    -0xc(%ebp),%ebx
   30060:	89 d8                	mov    %ebx,%eax
   30062:	c1 e0 02             	shl    $0x2,%eax
   30065:	01 d8                	add    %ebx,%eax
   30067:	01 c0                	add    %eax,%eax
   30069:	8b 5d f0             	mov    -0x10(%ebp),%ebx
   3006c:	01 d8                	add    %ebx,%eax
   3006e:	8b 1c 81             	mov    (%ecx,%eax,4),%ebx
   30071:	8b 4d f4             	mov    -0xc(%ebp),%ecx
   30074:	89 c8                	mov    %ecx,%eax
   30076:	c1 e0 02             	shl    $0x2,%eax
   30079:	01 c8                	add    %ecx,%eax
   3007b:	01 c0                	add    %eax,%eax
   3007d:	8b 4d ec             	mov    -0x14(%ebp),%ecx
   30080:	01 c8                	add    %ecx,%eax
   30082:	8b b4 82 20 00 00 00 	mov    0x20(%edx,%eax,4),%esi
   30089:	8b 4d ec             	mov    -0x14(%ebp),%ecx
   3008c:	89 c8                	mov    %ecx,%eax
   3008e:	c1 e0 02             	shl    $0x2,%eax
   30091:	01 c8                	add    %ecx,%eax
   30093:	01 c0                	add    %eax,%eax
   30095:	8b 4d f0             	mov    -0x10(%ebp),%ecx
   30098:	01 c8                	add    %ecx,%eax
   3009a:	8b 84 82 c0 01 00 00 	mov    0x1c0(%edx,%eax,4),%eax
   300a1:	0f af c6             	imul   %esi,%eax
   300a4:	8d 34 03             	lea    (%ebx,%eax,1),%esi
   300a7:	c7 c1 00 25 03 00    	mov    $0x32500,%ecx
   300ad:	8b 5d f4             	mov    -0xc(%ebp),%ebx
   300b0:	89 d8                	mov    %ebx,%eax
   300b2:	c1 e0 02             	shl    $0x2,%eax
   300b5:	01 d8                	add    %ebx,%eax
   300b7:	01 c0                	add    %eax,%eax
   300b9:	8b 5d f0             	mov    -0x10(%ebp),%ebx
   300bc:	01 d8                	add    %ebx,%eax
   300be:	89 34 81             	mov    %esi,(%ecx,%eax,4)
   300c1:	ff 45 ec             	incl   -0x14(%ebp)
   300c4:	83 7d ec 09          	cmpl   $0x9,-0x14(%ebp)
   300c8:	7e 8d                	jle    30057 <main+0x52>
   300ca:	c7 c1 00 25 03 00    	mov    $0x32500,%ecx
   300d0:	8b 5d f4             	mov    -0xc(%ebp),%ebx
   300d3:	89 d8                	mov    %ebx,%eax
   300d5:	c1 e0 02             	shl    $0x2,%eax
   300d8:	01 d8                	add    %ebx,%eax
   300da:	01 c0                	add    %eax,%eax
   300dc:	8b 5d f0             	mov    -0x10(%ebp),%ebx
   300df:	01 d8                	add    %ebx,%eax
   300e1:	8b 1c 81             	mov    (%ecx,%eax,4),%ebx
   300e4:	8b 4d f4             	mov    -0xc(%ebp),%ecx
   300e7:	89 c8                	mov    %ecx,%eax
   300e9:	c1 e0 02             	shl    $0x2,%eax
   300ec:	01 c8                	add    %ecx,%eax
   300ee:	01 c0                	add    %eax,%eax
   300f0:	8b 4d f0             	mov    -0x10(%ebp),%ecx
   300f3:	01 c8                	add    %ecx,%eax
   300f5:	8b 84 82 60 03 00 00 	mov    0x360(%edx,%eax,4),%eax
   300fc:	39 c3                	cmp    %eax,%ebx
   300fe:	74 06                	je     30106 <main+0x101>
   30100:	b8 01 00 00 00       	mov    $0x1,%eax
   30105:	82 ff 45             	cmp    $0x45,%bh
   30108:	f0 83 7d f0 09       	lock cmpl $0x9,-0x10(%ebp)
   3010d:	0f 8e 1d ff ff ff    	jle    30030 <main+0x2b>
   30113:	ff 45 f4             	incl   -0xc(%ebp)
   30116:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
   3011a:	0f 8e 04 ff ff ff    	jle    30024 <main+0x1f>
   30120:	b8 00 00 00 00       	mov    $0x0,%eax
   30125:	82 b8 00 00 00 00 83 	cmpb   $0x83,0x0(%eax)
   3012c:	c4 10                	les    (%eax),%edx
   3012e:	5b                   	pop    %ebx
   3012f:	5e                   	pop    %esi
   30130:	5d                   	pop    %ebp
   30131:	c3                   	ret    

00030132 <__x86.get_pc_thunk.dx>:
   30132:	8b 14 24             	mov    (%esp),%edx
   30135:	c3                   	ret    
