# Éthos Nexum — GitHub Actions Android Build

Aplicativo Android Capacitor preparado para compilação na nuvem.

- Application ID: `com.ethosnexum.app`
- Versão: `1.0.0` (versionCode `1`)
- Java: 21
- Android target/compile SDK: 36
- Gradle: 8.13
- Capacitor Android: 8.5.0

## Como usar

1. Crie um repositório no GitHub.
2. Envie **todo o conteúdo desta pasta** para a raiz do repositório.
3. No GitHub, abra **Actions**.
4. Selecione **Build Éthos Nexum Android**.
5. Clique em **Run workflow**.
6. Quando terminar, abra a execução concluída e procure **Artifacts**.

Serão gerados:

- `EthosNexum-debug-APK` — APK de teste, assinado pela chave de debug.
- `EthosNexum-release-test-APK` — APK release assinado por uma chave temporária criada durante o build.
- `EthosNexum-release-test-AAB` — AAB release de teste.
- `EthosNexum-generated-Gradle-Wrapper` — wrapper oficial gerado pelo build.

### Importante sobre a assinatura

A chave usada no release é **temporária e exclusiva para testes**. Não use esse APK/AAB para publicar na Google Play. Para publicação, crie uma chave de assinatura permanente e guarde-a com segurança em GitHub Secrets. O Android exige assinatura de release para distribuição. O AAB é o formato recomendado para envio à Play Store.

### Por que o projeto gera o wrapper no CI?

O ambiente desta entrega não inclui o `gradle-wrapper.jar`. O workflow instala Gradle 8.13 e gera o wrapper oficial dentro do próprio runner antes da compilação. Assim, a compilação no GitHub fica reproduzível e não depende do Android Studio instalado no seu computador.
