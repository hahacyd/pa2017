
mov-cmp:     file format elf32-i386


Disassembly of section .text:

00030000 <start>:
   30000:	e9 00 00 00 00       	jmp    30005 <main>

00030005 <main>:
   30005:	b8 00 00 00 00       	mov    $0x0,%eax
   3000a:	bb 01 00 00 00       	mov    $0x1,%ebx
   3000f:	b9 00 00 00 00       	mov    $0x0,%ecx
   30014:	ba 00 00 00 00       	mov    $0x0,%edx
   30019:	b9 00 80 00 00       	mov    $0x8000,%ecx
   3001e:	66 bb 01 00          	mov    $0x1,%bx
   30022:	b7 00                	mov    $0x0,%bh
   30024:	c7 05 34 12 00 00 01 	movl   $0x1,0x1234
   3002b:	00 00 00 
   3002e:	a1 34 12 00 00       	mov    0x1234,%eax
   30033:	83 f8 01             	cmp    $0x1,%eax
   30036:	66 c7 05 34 12 00 00 	movw   $0xffff,0x1234
   3003d:	ff ff 
   3003f:	66 a1 34 12 00 00    	mov    0x1234,%ax
   30045:	66 83 f8 ff          	cmp    $0xffff,%ax
   30049:	c6 05 34 12 00 00 01 	movb   $0x1,0x1234
   30050:	c7 01 02 00 00 00    	movl   $0x2,(%ecx)
   30056:	a1 00 80 00 00       	mov    0x8000,%eax
   3005b:	83 f8 02             	cmp    $0x2,%eax
   3005e:	66 c7 01 fe ff       	movw   $0xfffe,(%ecx)
   30063:	66 a1 00 80 00 00    	mov    0x8000,%ax
   30069:	66 83 f8 fe          	cmp    $0xfffe,%ax
   3006d:	c6 01 01             	movb   $0x1,(%ecx)
   30070:	c7 04 99 03 00 00 00 	movl   $0x3,(%ecx,%ebx,4)
   30077:	a1 04 80 00 00       	mov    0x8004,%eax
   3007c:	83 f8 03             	cmp    $0x3,%eax
   3007f:	66 c7 04 99 fd ff    	movw   $0xfffd,(%ecx,%ebx,4)
   30085:	66 a1 04 80 00 00    	mov    0x8004,%ax
   3008b:	66 83 f8 fd          	cmp    $0xfffd,%ax
   3008f:	c6 04 99 01          	movb   $0x1,(%ecx,%ebx,4)
   30093:	c7 41 02 04 00 00 00 	movl   $0x4,0x2(%ecx)
   3009a:	66 a1 02 80 00 00    	mov    0x8002,%ax
   300a0:	66 83 f8 04          	cmp    $0x4,%ax
   300a4:	66 c7 41 02 fc ff    	movw   $0xfffc,0x2(%ecx)
   300aa:	66 a1 02 80 00 00    	mov    0x8002,%ax
   300b0:	66 83 f8 fc          	cmp    $0xfffc,%ax
   300b4:	c6 41 02 01          	movb   $0x1,0x2(%ecx)
   300b8:	c7 41 fe 05 00 00 00 	movl   $0x5,-0x2(%ecx)
   300bf:	a1 fe 7f 00 00       	mov    0x7ffe,%eax
   300c4:	83 f8 05             	cmp    $0x5,%eax
   300c7:	66 c7 41 fe fb ff    	movw   $0xfffb,-0x2(%ecx)
   300cd:	66 a1 fe 7f 00 00    	mov    0x7ffe,%ax
   300d3:	66 83 f8 fb          	cmp    $0xfffb,%ax
   300d7:	c6 41 fe 01          	movb   $0x1,-0x2(%ecx)
   300db:	c7 44 99 02 06 00 00 	movl   $0x6,0x2(%ecx,%ebx,4)
   300e2:	00 
   300e3:	a1 06 80 00 00       	mov    0x8006,%eax
   300e8:	83 f8 06             	cmp    $0x6,%eax
   300eb:	66 c7 44 99 02 fa ff 	movw   $0xfffa,0x2(%ecx,%ebx,4)
   300f2:	66 a1 06 80 00 00    	mov    0x8006,%ax
   300f8:	66 83 f8 fa          	cmp    $0xfffa,%ax
   300fc:	c6 44 99 02 01       	movb   $0x1,0x2(%ecx,%ebx,4)
   30101:	c7 44 99 fe 07 00 00 	movl   $0x7,-0x2(%ecx,%ebx,4)
   30108:	00 
   30109:	a1 02 80 00 00       	mov    0x8002,%eax
   3010e:	83 f8 07             	cmp    $0x7,%eax
   30111:	66 c7 44 99 fe f9 ff 	movw   $0xfff9,-0x2(%ecx,%ebx,4)
   30118:	66 a1 02 80 00 00    	mov    0x8002,%ax
   3011e:	66 83 f8 f9          	cmp    $0xfff9,%ax
   30122:	c6 44 99 fe 01       	movb   $0x1,-0x2(%ecx,%ebx,4)
   30127:	c7 81 00 20 00 00 08 	movl   $0x8,0x2000(%ecx)
   3012e:	00 00 00 
   30131:	a1 00 a0 00 00       	mov    0xa000,%eax
   30136:	83 f8 08             	cmp    $0x8,%eax
   30139:	66 c7 81 00 20 00 00 	movw   $0xfff8,0x2000(%ecx)
   30140:	f8 ff 
   30142:	66 a1 00 a0 00 00    	mov    0xa000,%ax
   30148:	66 83 f8 f8          	cmp    $0xfff8,%ax
   3014c:	c6 81 00 20 00 00 01 	movb   $0x1,0x2000(%ecx)
   30153:	c7 81 00 e0 ff ff 09 	movl   $0x9,-0x2000(%ecx)
   3015a:	00 00 00 
   3015d:	a1 00 60 00 00       	mov    0x6000,%eax
   30162:	83 f8 09             	cmp    $0x9,%eax
   30165:	66 c7 81 00 e0 ff ff 	movw   $0xfff7,-0x2000(%ecx)
   3016c:	f7 ff 
   3016e:	66 a1 00 60 00 00    	mov    0x6000,%ax
   30174:	66 83 f8 f7          	cmp    $0xfff7,%ax
   30178:	c6 81 00 e0 ff ff 01 	movb   $0x1,-0x2000(%ecx)
   3017f:	c7 84 99 00 20 00 00 	movl   $0xa,0x2000(%ecx,%ebx,4)
   30186:	0a 00 00 00 
   3018a:	a1 04 a0 00 00       	mov    0xa004,%eax
   3018f:	83 f8 0a             	cmp    $0xa,%eax
   30192:	66 c7 84 99 00 20 00 	movw   $0xfff6,0x2000(%ecx,%ebx,4)
   30199:	00 f6 ff 
   3019c:	66 a1 04 a0 00 00    	mov    0xa004,%ax
   301a2:	66 83 f8 f6          	cmp    $0xfff6,%ax
   301a6:	c6 84 99 00 20 00 00 	movb   $0x1,0x2000(%ecx,%ebx,4)
   301ad:	01 
   301ae:	c7 84 99 00 e0 ff ff 	movl   $0xb,-0x2000(%ecx,%ebx,4)
   301b5:	0b 00 00 00 
   301b9:	a1 04 60 00 00       	mov    0x6004,%eax
   301be:	83 f8 0b             	cmp    $0xb,%eax
   301c1:	66 c7 84 99 00 e0 ff 	movw   $0xfff5,-0x2000(%ecx,%ebx,4)
   301c8:	ff f5 ff 
   301cb:	66 a1 04 60 00 00    	mov    0x6004,%ax
   301d1:	66 83 f8 f5          	cmp    $0xfff5,%ax
   301d5:	c6 84 99 00 e0 ff ff 	movb   $0x1,-0x2000(%ecx,%ebx,4)
   301dc:	01 
   301dd:	89 c3                	mov    %eax,%ebx
   301df:	66 89 c3             	mov    %ax,%bx
   301e2:	88 e3                	mov    %ah,%bl
   301e4:	a3 34 12 00 00       	mov    %eax,0x1234
   301e9:	66 a3 34 12 00 00    	mov    %ax,0x1234
   301ef:	a2 34 12 00 00       	mov    %al,0x1234
   301f4:	88 25 34 12 00 00    	mov    %ah,0x1234
   301fa:	89 03                	mov    %eax,(%ebx)
   301fc:	89 04 99             	mov    %eax,(%ecx,%ebx,4)
   301ff:	66 89 04 99          	mov    %ax,(%ecx,%ebx,4)
   30203:	88 24 99             	mov    %ah,(%ecx,%ebx,4)
   30206:	89 41 02             	mov    %eax,0x2(%ecx)
   30209:	66 89 41 02          	mov    %ax,0x2(%ecx)
   3020d:	88 61 02             	mov    %ah,0x2(%ecx)
   30210:	89 44 99 02          	mov    %eax,0x2(%ecx,%ebx,4)
   30214:	66 89 44 99 02       	mov    %ax,0x2(%ecx,%ebx,4)
   30219:	88 64 99 02          	mov    %ah,0x2(%ecx,%ebx,4)
   3021d:	89 81 00 20 00 00    	mov    %eax,0x2000(%ecx)
   30223:	66 89 81 00 20 00 00 	mov    %ax,0x2000(%ecx)
   3022a:	88 a1 00 20 00 00    	mov    %ah,0x2000(%ecx)
   30230:	89 84 99 00 20 00 00 	mov    %eax,0x2000(%ecx,%ebx,4)
   30237:	66 89 84 99 00 20 00 	mov    %ax,0x2000(%ecx,%ebx,4)
   3023e:	00 
   3023f:	88 a4 99 00 20 00 00 	mov    %ah,0x2000(%ecx,%ebx,4)
   30246:	89 d3                	mov    %edx,%ebx
   30248:	66 89 d3             	mov    %dx,%bx
   3024b:	88 f3                	mov    %dh,%bl
   3024d:	89 15 34 12 00 00    	mov    %edx,0x1234
   30253:	66 89 15 34 12 00 00 	mov    %dx,0x1234
   3025a:	88 15 34 12 00 00    	mov    %dl,0x1234
   30260:	88 35 34 12 00 00    	mov    %dh,0x1234
   30266:	89 13                	mov    %edx,(%ebx)
   30268:	89 14 99             	mov    %edx,(%ecx,%ebx,4)
   3026b:	66 89 14 99          	mov    %dx,(%ecx,%ebx,4)
   3026f:	88 34 99             	mov    %dh,(%ecx,%ebx,4)
   30272:	89 51 02             	mov    %edx,0x2(%ecx)
   30275:	66 89 51 02          	mov    %dx,0x2(%ecx)
   30279:	88 71 02             	mov    %dh,0x2(%ecx)
   3027c:	89 54 99 02          	mov    %edx,0x2(%ecx,%ebx,4)
   30280:	66 89 54 99 02       	mov    %dx,0x2(%ecx,%ebx,4)
   30285:	88 74 99 02          	mov    %dh,0x2(%ecx,%ebx,4)
   30289:	89 91 00 20 00 00    	mov    %edx,0x2000(%ecx)
   3028f:	66 89 91 00 20 00 00 	mov    %dx,0x2000(%ecx)
   30296:	88 b1 00 20 00 00    	mov    %dh,0x2000(%ecx)
   3029c:	89 94 99 00 20 00 00 	mov    %edx,0x2000(%ecx,%ebx,4)
   302a3:	66 89 94 99 00 20 00 	mov    %dx,0x2000(%ecx,%ebx,4)
   302aa:	00 
   302ab:	88 b4 99 00 20 00 00 	mov    %dh,0x2000(%ecx,%ebx,4)
   302b2:	a1 34 12 00 00       	mov    0x1234,%eax
   302b7:	66 a1 34 12 00 00    	mov    0x1234,%ax
   302bd:	a0 34 12 00 00       	mov    0x1234,%al
   302c2:	8a 25 34 12 00 00    	mov    0x1234,%ah
   302c8:	8b 03                	mov    (%ebx),%eax
   302ca:	8b 04 99             	mov    (%ecx,%ebx,4),%eax
   302cd:	66 8b 04 99          	mov    (%ecx,%ebx,4),%ax
   302d1:	8a 24 99             	mov    (%ecx,%ebx,4),%ah
   302d4:	8b 41 02             	mov    0x2(%ecx),%eax
   302d7:	66 8b 41 02          	mov    0x2(%ecx),%ax
   302db:	8a 61 02             	mov    0x2(%ecx),%ah
   302de:	8b 44 99 02          	mov    0x2(%ecx,%ebx,4),%eax
   302e2:	66 8b 44 99 02       	mov    0x2(%ecx,%ebx,4),%ax
   302e7:	8a 64 99 02          	mov    0x2(%ecx,%ebx,4),%ah
   302eb:	8b 81 00 20 00 00    	mov    0x2000(%ecx),%eax
   302f1:	66 8b 81 00 20 00 00 	mov    0x2000(%ecx),%ax
   302f8:	8a a1 00 20 00 00    	mov    0x2000(%ecx),%ah
   302fe:	8b 84 99 00 20 00 00 	mov    0x2000(%ecx,%ebx,4),%eax
   30305:	66 8b 84 99 00 20 00 	mov    0x2000(%ecx,%ebx,4),%ax
   3030c:	00 
   3030d:	8a a4 99 00 20 00 00 	mov    0x2000(%ecx,%ebx,4),%ah
   30314:	8b 15 34 12 00 00    	mov    0x1234,%edx
   3031a:	66 8b 15 34 12 00 00 	mov    0x1234,%dx
   30321:	8a 15 34 12 00 00    	mov    0x1234,%dl
   30327:	8a 35 34 12 00 00    	mov    0x1234,%dh
   3032d:	8b 13                	mov    (%ebx),%edx
   3032f:	8b 14 99             	mov    (%ecx,%ebx,4),%edx
   30332:	66 8b 14 99          	mov    (%ecx,%ebx,4),%dx
   30336:	8a 34 99             	mov    (%ecx,%ebx,4),%dh
   30339:	8b 51 02             	mov    0x2(%ecx),%edx
   3033c:	66 8b 51 02          	mov    0x2(%ecx),%dx
   30340:	8a 71 02             	mov    0x2(%ecx),%dh
   30343:	8b 54 99 02          	mov    0x2(%ecx,%ebx,4),%edx
   30347:	66 8b 54 99 02       	mov    0x2(%ecx,%ebx,4),%dx
   3034c:	8a 74 99 02          	mov    0x2(%ecx,%ebx,4),%dh
   30350:	8b 91 00 20 00 00    	mov    0x2000(%ecx),%edx
   30356:	66 8b 91 00 20 00 00 	mov    0x2000(%ecx),%dx
   3035d:	8a b1 00 20 00 00    	mov    0x2000(%ecx),%dh
   30363:	8b 94 99 00 20 00 00 	mov    0x2000(%ecx,%ebx,4),%edx
   3036a:	66 8b 94 99 00 20 00 	mov    0x2000(%ecx,%ebx,4),%dx
   30371:	00 
   30372:	8a b4 99 00 20 00 00 	mov    0x2000(%ecx,%ebx,4),%dh
   30379:	b8 00 00 00 00       	mov    $0x0,%eax
   3037e:	82                   	.byte 0x82
