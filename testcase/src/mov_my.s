
mov:     file format elf32-i386


Disassembly of section .text:

00030000 <start>:
   30000:	e9 00 00 00 00       	jmp    30005 <main>

00030005 <main>:
   30005:	b8 00 00 00 00       	mov    $0x0,%eax
   3000a:	bb 00 00 00 00       	mov    $0x0,%ebx
   3000f:	b9 00 00 00 00       	mov    $0x0,%ecx
   30014:	ba 00 00 00 00       	mov    $0x0,%edx
   30019:	b9 00 80 00 00       	mov    $0x8000,%ecx
   3001e:	66 bb 00 00          	mov    $0x0,%bx
   30022:	b7 00                	mov    $0x0,%bh
   30024:	c7 05 34 12 00 00 01 	movl   $0x1,0x1234
   3002b:	00 00 00 
   3002e:	66 c7 05 34 12 00 00 	movw   $0x1,0x1234
   30035:	01 00 
   30037:	c6 05 34 12 00 00 01 	movb   $0x1,0x1234
   3003e:	c7 01 01 00 00 00    	movl   $0x1,(%ecx)
   30044:	66 c7 01 01 00       	movw   $0x1,(%ecx)
   30049:	c6 01 01             	movb   $0x1,(%ecx)
   3004c:	c7 04 99 01 00 00 00 	movl   $0x1,(%ecx,%ebx,4)
   30053:	66 c7 04 99 01 00    	movw   $0x1,(%ecx,%ebx,4)
   30059:	c6 04 99 01          	movb   $0x1,(%ecx,%ebx,4)
   3005d:	c7 41 02 01 00 00 00 	movl   $0x1,0x2(%ecx)
   30064:	66 c7 41 02 01 00    	movw   $0x1,0x2(%ecx)
   3006a:	c6 41 02 01          	movb   $0x1,0x2(%ecx)
   3006e:	c7 41 fe 01 00 00 00 	movl   $0x1,-0x2(%ecx)
   30075:	66 c7 41 fe 01 00    	movw   $0x1,-0x2(%ecx)
   3007b:	c6 41 fe 01          	movb   $0x1,-0x2(%ecx)
   3007f:	c7 44 99 02 01 00 00 	movl   $0x1,0x2(%ecx,%ebx,4)
   30086:	00 
   30087:	66 c7 44 99 02 01 00 	movw   $0x1,0x2(%ecx,%ebx,4)
   3008e:	c6 44 99 02 01       	movb   $0x1,0x2(%ecx,%ebx,4)
   30093:	c7 44 99 fe 01 00 00 	movl   $0x1,-0x2(%ecx,%ebx,4)
   3009a:	00 
   3009b:	66 c7 44 99 fe 01 00 	movw   $0x1,-0x2(%ecx,%ebx,4)
   300a2:	c6 44 99 fe 01       	movb   $0x1,-0x2(%ecx,%ebx,4)
   300a7:	c7 81 00 20 00 00 01 	movl   $0x1,0x2000(%ecx)
   300ae:	00 00 00 
   300b1:	66 c7 81 00 20 00 00 	movw   $0x1,0x2000(%ecx)
   300b8:	01 00 
   300ba:	c6 81 00 20 00 00 01 	movb   $0x1,0x2000(%ecx)
   300c1:	c7 81 00 e0 ff ff 01 	movl   $0x1,-0x2000(%ecx)
   300c8:	00 00 00 
   300cb:	66 c7 81 00 e0 ff ff 	movw   $0x1,-0x2000(%ecx)
   300d2:	01 00 
   300d4:	c6 81 00 e0 ff ff 01 	movb   $0x1,-0x2000(%ecx)
   300db:	c7 84 99 00 20 00 00 	movl   $0x1,0x2000(%ecx,%ebx,4)
   300e2:	01 00 00 00 
   300e6:	66 c7 84 99 00 20 00 	movw   $0x1,0x2000(%ecx,%ebx,4)
   300ed:	00 01 00 
   300f0:	c6 84 99 00 20 00 00 	movb   $0x1,0x2000(%ecx,%ebx,4)
   300f7:	01 
   300f8:	c7 84 99 00 e0 ff ff 	movl   $0x1,-0x2000(%ecx,%ebx,4)
   300ff:	01 00 00 00 
   30103:	66 c7 84 99 00 e0 ff 	movw   $0x1,-0x2000(%ecx,%ebx,4)
   3010a:	ff 01 00 
   3010d:	c6 84 99 00 e0 ff ff 	movb   $0x1,-0x2000(%ecx,%ebx,4)
   30114:	01 
   30115:	89 c3                	mov    %eax,%ebx
   30117:	66 89 c3             	mov    %ax,%bx
   3011a:	88 e3                	mov    %ah,%bl
   3011c:	a3 34 12 00 00       	mov    %eax,0x1234
   30121:	66 a3 34 12 00 00    	mov    %ax,0x1234
   30127:	a2 34 12 00 00       	mov    %al,0x1234
   3012c:	88 25 34 12 00 00    	mov    %ah,0x1234
   30132:	89 03                	mov    %eax,(%ebx)
   30134:	89 04 99             	mov    %eax,(%ecx,%ebx,4)
   30137:	66 89 04 99          	mov    %ax,(%ecx,%ebx,4)
   3013b:	88 24 99             	mov    %ah,(%ecx,%ebx,4)
   3013e:	89 41 02             	mov    %eax,0x2(%ecx)
   30141:	66 89 41 02          	mov    %ax,0x2(%ecx)
   30145:	88 61 02             	mov    %ah,0x2(%ecx)
   30148:	89 44 99 02          	mov    %eax,0x2(%ecx,%ebx,4)
   3014c:	66 89 44 99 02       	mov    %ax,0x2(%ecx,%ebx,4)
   30151:	88 64 99 02          	mov    %ah,0x2(%ecx,%ebx,4)
   30155:	89 81 00 20 00 00    	mov    %eax,0x2000(%ecx)
   3015b:	66 89 81 00 20 00 00 	mov    %ax,0x2000(%ecx)
   30162:	88 a1 00 20 00 00    	mov    %ah,0x2000(%ecx)
   30168:	89 84 99 00 20 00 00 	mov    %eax,0x2000(%ecx,%ebx,4)
   3016f:	66 89 84 99 00 20 00 	mov    %ax,0x2000(%ecx,%ebx,4)
   30176:	00 
   30177:	88 a4 99 00 20 00 00 	mov    %ah,0x2000(%ecx,%ebx,4)
   3017e:	89 d3                	mov    %edx,%ebx
   30180:	66 89 d3             	mov    %dx,%bx
   30183:	88 f3                	mov    %dh,%bl
   30185:	89 15 34 12 00 00    	mov    %edx,0x1234
   3018b:	66 89 15 34 12 00 00 	mov    %dx,0x1234
   30192:	88 15 34 12 00 00    	mov    %dl,0x1234
   30198:	88 35 34 12 00 00    	mov    %dh,0x1234
   3019e:	89 13                	mov    %edx,(%ebx)
   301a0:	89 14 99             	mov    %edx,(%ecx,%ebx,4)
   301a3:	66 89 14 99          	mov    %dx,(%ecx,%ebx,4)
   301a7:	88 34 99             	mov    %dh,(%ecx,%ebx,4)
   301aa:	89 51 02             	mov    %edx,0x2(%ecx)
   301ad:	66 89 51 02          	mov    %dx,0x2(%ecx)
   301b1:	88 71 02             	mov    %dh,0x2(%ecx)
   301b4:	89 54 99 02          	mov    %edx,0x2(%ecx,%ebx,4)
   301b8:	66 89 54 99 02       	mov    %dx,0x2(%ecx,%ebx,4)
   301bd:	88 74 99 02          	mov    %dh,0x2(%ecx,%ebx,4)
   301c1:	89 91 00 20 00 00    	mov    %edx,0x2000(%ecx)
   301c7:	66 89 91 00 20 00 00 	mov    %dx,0x2000(%ecx)
   301ce:	88 b1 00 20 00 00    	mov    %dh,0x2000(%ecx)
   301d4:	89 94 99 00 20 00 00 	mov    %edx,0x2000(%ecx,%ebx,4)
   301db:	66 89 94 99 00 20 00 	mov    %dx,0x2000(%ecx,%ebx,4)
   301e2:	00 
   301e3:	88 b4 99 00 20 00 00 	mov    %dh,0x2000(%ecx,%ebx,4)
   301ea:	a1 34 12 00 00       	mov    0x1234,%eax
   301ef:	66 a1 34 12 00 00    	mov    0x1234,%ax
   301f5:	a0 34 12 00 00       	mov    0x1234,%al
   301fa:	8a 25 34 12 00 00    	mov    0x1234,%ah
   30200:	8b 03                	mov    (%ebx),%eax
   30202:	8b 04 99             	mov    (%ecx,%ebx,4),%eax
   30205:	66 8b 04 99          	mov    (%ecx,%ebx,4),%ax
   30209:	8a 24 99             	mov    (%ecx,%ebx,4),%ah
   3020c:	8b 41 02             	mov    0x2(%ecx),%eax
   3020f:	66 8b 41 02          	mov    0x2(%ecx),%ax
   30213:	8a 61 02             	mov    0x2(%ecx),%ah
   30216:	8b 44 99 02          	mov    0x2(%ecx,%ebx,4),%eax
   3021a:	66 8b 44 99 02       	mov    0x2(%ecx,%ebx,4),%ax
   3021f:	8a 64 99 02          	mov    0x2(%ecx,%ebx,4),%ah
   30223:	8b 81 00 20 00 00    	mov    0x2000(%ecx),%eax
   30229:	66 8b 81 00 20 00 00 	mov    0x2000(%ecx),%ax
   30230:	8a a1 00 20 00 00    	mov    0x2000(%ecx),%ah
   30236:	8b 84 99 00 20 00 00 	mov    0x2000(%ecx,%ebx,4),%eax
   3023d:	66 8b 84 99 00 20 00 	mov    0x2000(%ecx,%ebx,4),%ax
   30244:	00 
   30245:	8a a4 99 00 20 00 00 	mov    0x2000(%ecx,%ebx,4),%ah
   3024c:	8b 15 34 12 00 00    	mov    0x1234,%edx
   30252:	66 8b 15 34 12 00 00 	mov    0x1234,%dx
   30259:	8a 15 34 12 00 00    	mov    0x1234,%dl
   3025f:	8a 35 34 12 00 00    	mov    0x1234,%dh
   30265:	8b 13                	mov    (%ebx),%edx
   30267:	8b 14 99             	mov    (%ecx,%ebx,4),%edx
   3026a:	66 8b 14 99          	mov    (%ecx,%ebx,4),%dx
   3026e:	8a 34 99             	mov    (%ecx,%ebx,4),%dh
   30271:	8b 51 02             	mov    0x2(%ecx),%edx
   30274:	66 8b 51 02          	mov    0x2(%ecx),%dx
   30278:	8a 71 02             	mov    0x2(%ecx),%dh
   3027b:	8b 54 99 02          	mov    0x2(%ecx,%ebx,4),%edx
   3027f:	66 8b 54 99 02       	mov    0x2(%ecx,%ebx,4),%dx
   30284:	8a 74 99 02          	mov    0x2(%ecx,%ebx,4),%dh
   30288:	8b 91 00 20 00 00    	mov    0x2000(%ecx),%edx
   3028e:	66 8b 91 00 20 00 00 	mov    0x2000(%ecx),%dx
   30295:	8a b1 00 20 00 00    	mov    0x2000(%ecx),%dh
   3029b:	8b 94 99 00 20 00 00 	mov    0x2000(%ecx,%ebx,4),%edx
   302a2:	66 8b 94 99 00 20 00 	mov    0x2000(%ecx,%ebx,4),%dx
   302a9:	00 
   302aa:	8a b4 99 00 20 00 00 	mov    0x2000(%ecx,%ebx,4),%dh
   302b1:	b8 00 00 00 00       	mov    $0x0,%eax
   302b6:	82                   	.byte 0x82
