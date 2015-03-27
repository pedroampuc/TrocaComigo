//
//  DataBaseDAO.m
//  fireBaseOBJC
//
//  Created by Pedro Miranda on 3/18/15.
//  Copyright (c) 2015 Pedro Miranda. All rights reserved.
//

#import "DataBaseDAO.h"

#import <Firebase/Firebase.h>



NSMutableArray *usuarioaux;
NSTimer *Mytimer;
NSMutableArray *aux;

@interface DataBaseDAO ()

@end

@implementation DataBaseDAO

- (void)viewDidLoad
{
    self.consultaFinalizada=0;
    
    //USUARIO
    self.nome = @"Mayara";
    self.dataNasc = @"20/03/2015";
    self.sexo= @"masculino";
    self.idade=@"18";
    self.tamanho=@"g";
    self.email=@"teste1@gmail.com";
    self.celular=@"97799999";
    self.facebook=@"pedro miranda";
    //key=@"1231423434534";// MUDAR PARA DINAMUCA EM TEMPO DE EXECUCAO
    
    //ROUPA
    self.codRoupa = @"12123546456";// da roupa
    self.usermail = @"teste1@gmail.com";
    self.tipoRoupa = @"blusa";
    self.nomeRoupa = @"camisa fashion";
    self.foto = @"url";
    self.tamanho = @"p";
    
    // Get a reference to our posts
    // Firebase *ref = [[Firebase alloc] initWithUrl: @"https://blistering-torch-5926.firebaseio.com/users"];
    // Attach a block to read the data at our posts reference
    //[ref observeEventType:FEventTypeValue withBlock:^(FDataSnapshot *snapshot) {
    //  NSLog(@"%@", snapshot.value);
    
    //} withCancelBlock:^(NSError *error) {
    //   NSLog(@"%@", error.description);
    //}];
    
    //[[ref queryOrderedByValue] observeEventType:FEventTypeChildAdded withBlock:^(FDataSnapshot *snapshot) {
    //  NSLog(@"The %@ dinosaur's score is %@", snapshot.key, snapshot.value);
    //}];
    
    
    
    
    //pedroampuc@gmail.com
   // usuarioaux =  [self getUserSpecsWithEmail:@"phalves@gmail.com"];
//    Mytimer = [NSTimer scheduledTimerWithTimeInterval:2.0
//                                               target:self
//                                             selector:@selector(printUser)
//                                             userInfo:nil
//                                              repeats:NO];
//     NSLog(@"teste MAIN %@",usuarioaux);
//    
    
    
    //NSLog(@"DENTRO DA MAIN  arrrrsssssssssssllllll %@"          );
    //[ref removeAllObservers];
    
    
    
    
    //LIKE
   // key;//codigo do usuario que deu o like
    //codRoupa;//roupa q ele curtiu
    //userKeyRoupa;//codigo do usuario com a roupa que ele curtiu
    
    //[self createRoupaWithKey:codRoupa userKey:userKeyRoupa tipoRoupa:tipoRoupa nomeRoupa:nomeRoupa urlFoto:foto Tamanho:tamanho];
    
   // [self createUserWithKey:key Nome:nome Idade:idade Nasc:dataNasc Tamanho:tamanho Sexo:sexo Email:email Celular:celular Facebook:facebook];
    
    //[self createUserLikeWithKey:key roupaCurtida:codRoupa DonoDaRoupa:userKeyRoupa];
}

- (void)didReceiveMemoryWarning {
   // [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(NSMutableArray*)getUserSpecsWithEmail:(NSString*)email
{
    NSLog(@"dentro da getuser na DBDAO");
    
    Firebase *ref = [[Firebase alloc] initWithUrl: @"https://blistering-torch-5926.firebaseio.com/users"];
    
    
    
    //NSMutableArray *arrLSBGoals = [NSMutableArray array];
    self.arrLSBGoals = [NSMutableArray array];
    //NSDictionary  *usuario = [[NSDictionary alloc] init ];
    //NSDictionary *aux2;
    
    BOOL x =false;
    NSLog(@"Antes do REF dentro da DataBaseDAO");
    [[ref queryOrderedByValue] observeEventType:FEventTypeValue withBlock:^(FDataSnapshot *snapshot) {
        
            NSLog(@"Antes do for dentro da REF da DataBaseDAO");
        
        for (FDataSnapshot* childSnap in snapshot.children) {
            //FDataSnapshot *aux = snapshot.ref;
            // NSString* key = childSnap.key;
            
            NSLog(@"key -> %@", childSnap.key);
            for (FDataSnapshot* childSnap2 in childSnap.children)
            {
                
                if ([email isEqualToString:childSnap2.value[@"email"]]) {
                    
                   NSDictionary *usuario2 = @{
                                              @"nome"    :childSnap2.value[@"nome"],
                                              @"idade"   :childSnap2.value[@"idade"],
                                              @"data"    :childSnap2.value[@"data"],
                                              @"tamanho" :childSnap2.value[@"tamanho"],
                                              @"sexo"    :childSnap2.value[@"sexo"],
                                              @"email"   :childSnap2.value[@"email"],
                                              @"celular" :childSnap2.value[@"celular"],
                                              @"facebook":childSnap2.value[@"facebook"]
                                              };
                    
                    self.nome     = childSnap2.value[@"nome"];
                    self.idade    = childSnap2.value[@"idade"];
                    self.dataNasc = childSnap2.value[@"data"];
                    self.tamanho  = childSnap2.value[@"sexo"];
                    self.sexo     = childSnap2.value[@"email"];
                    self.celular  = childSnap2.value[@"celular"];
                    self.facebook = childSnap2.value[@"facebook"];
                    
                    
                   
                    
                    [self.arrLSBGoals addObject:usuario2];
                    NSLog(@"teste MUTABLE ARRAY %@ size %d",self.arrLSBGoals,(int)self.arrLSBGoals.count);
                }
                //childSnap2.value);
                // NSLog(@"email -> %@", childSnap2.value[@"email"]);
                // NSLog(@"nome -> %@", childSnap2.value[@"nome"]);
                //NSLog(@"tamanho -> %@", childSnap2.value[@"tamanho"]);
            }
        }
          self.consultaFinalizada =(NSInteger) 1;
    }];
    
    if (self.arrLSBGoals.count>0)
    {
        x=true;
    }
    //NSLog(@"TUDO--> %@", aux2);
        NSLog(@"Depois do REF da DataBaseDAO");
    if (x==false)
    {
        return nil;
    }else
    {
        return self.arrLSBGoals;
    }
}

-(NSDictionary*)createUserLikeWithEmail:(NSString*)email roupaCurtida:(NSString*)codRoupa DonoDaRoupa:(NSString*)clotheOwnerKey
{
    NSDictionary *like = @{
                           @"userMail"    :email,
                           @"CodRoupa"   :codRoupa,
                           @"DonoDaROupa":clotheOwnerKey
                           };
    
    [self saveLike:like];
    
    return like;
    return nil;
}


-(NSDictionary*)createRoupaWithKey:(NSString*)codRoupa userMail:(NSString*)userMail tipoRoupa:(NSString*)tipo nomeRoupa:(NSString*)nomeRoupa urlFoto:(NSString*)urlFoto Tamanho:(NSString*)tamanho
{
    NSDictionary *roupa = @{
                            @"CodRoupa"  :codRoupa,
                            @"userMail"  :userMail,
                            @"tipoRoupa" :tipo,
                            @"nomeRoupa" :nomeRoupa,
                            @"urlFoto"   :urlFoto,
                            @"tamanho"   :tamanho
                            };
    [self saveClothes:roupa];
    
    return roupa;
}


-(NSDictionary*)createUserWithMail:(NSString*)email Nome:(NSString*)name Idade:(NSString*)idade Nasc:(NSString*)datadenasc Tamanho:(NSString*)tamanho Sexo:(NSString*)sexo  Celular:(NSString*)celular Facebook:(NSString*)facebook
{
    NSDictionary *usuario = @{
                              
                              @"nome"    :name,
                              @"idade"   :idade,
                              @"data"    :datadenasc,
                              @"tamanho" :tamanho,
                              @"sexo"    :sexo,
                              @"email"   :email,
                              @"celular" :celular,
                              @"facebook":facebook
                              };
    [self saveUser:usuario];
    
    return usuario;
}

-(BOOL) saveLike:(NSDictionary*)like
{
    //1-cria a referencia para o banco
    Firebase *myRootRef = [[Firebase alloc] initWithUrl:@"https://blistering-torch-5926.firebaseio.com"];
    
    //2-chega na parte de usuários
    Firebase *Ref = [myRootRef childByAppendingPath: @"likes"];
    //3-cria um dicionario com o tipo usuário preenchido
    NSDictionary *aux = @{
                          self.nome:like
                          };
    //4-cria um novo filho na area de users
    Firebase *userchild = [Ref childByAutoId];
    
    //5-preenche o filho criado
    [userchild setValue:aux];
    
    return true;
}

-(BOOL)saveUser:(NSDictionary*)user
{
    //1-cria a referencia para o banco
    Firebase *myRootRef = [[Firebase alloc] initWithUrl:@"https://blistering-torch-5926.firebaseio.com"];
    
    //2-chega na parte de usuários
    Firebase *usersRef = [myRootRef childByAppendingPath: @"users"];
    //3-cria um dicionario com o tipo usuário preenchido
    NSDictionary *usersaux = @{
                               @"user":user
                               };
    //4-cria um novo filho na area de users
    Firebase *userchild = [usersRef childByAutoId];
    
    //5-preenche o filho criado
    [userchild setValue:usersaux];
    
    return true;
}

-(BOOL)saveClothes:(NSDictionary*)roupa
{
    //1-cria a referencia para o banco
    Firebase *myRootRef = [[Firebase alloc] initWithUrl:@"https://blistering-torch-5926.firebaseio.com"];
    
    //2-chega na parte de usuários
    Firebase *roupaRef = [myRootRef childByAppendingPath: @"roupas"];
    Firebase *userXroupaRef = [myRootRef childByAppendingPath: @"UserXRoupas"];
    //3-cria um dicionario com o tipo usuário preenchido
    NSDictionary *roupaAux = @{
                               self.nome:roupa
                               };
    // @"CodRoupa"  :codRoupa,
    // @"userKey"   :key,
    
    
    NSDictionary *userXroupaAux = @{
                                    @"userKey": [roupa valueForKey:@"userKey"],
                                    @"CodRoupa": [roupa valueForKey:@"CodRoupa"]
                                    };
    //4-cria um novo filho na area de users
    Firebase *roupaChild = [roupaRef childByAutoId];
    Firebase *userXroupaChild = [userXroupaRef childByAutoId];
    
    //5-preenche o filho criado
    [roupaChild setValue:roupaAux];
    [userXroupaChild setValue:userXroupaAux];
    
    return true;
}

-(void)printUser
{
    NSLog(@"DENTRO DA MAIN %@",self.arrLSBGoals);
    //usuarioaux = teste;
    //NSLog(@"DICIONARIO DENTRO DA MAIN %@",usuarioaux);
    Mytimer.invalidate;
    Mytimer = nil;
    
}

-(NSMutableArray*)getUser
{
    NSLog(@"DENTRO DA getuser %@",self.arrLSBGoals);
    //usuarioaux = teste;
    //NSLog(@"DICIONARIO DENTRO DA MAIN %@",usuarioaux);
    NSTimer *Mytimer2 = [NSTimer scheduledTimerWithTimeInterval:2.0
                                               target:self
                                             selector:nil
                                             userInfo:nil
                                              repeats:NO];
    Mytimer2.invalidate;
    Mytimer2 = nil;
    return self.arrLSBGoals;
}

//PARA IMPLEMENTAR

-(NSMutableArray*)getUserLikes:(NSString*)email{return nil;}

-(NSMutableArray*)getUserLikedClothes:(NSString*)email{return nil;}

-(NSMutableArray*)EditClothes:(NSString*)codRoupa{return nil;}

-(NSMutableArray*)getAllUserClothes:(NSString*)email{return nil;}



@end
