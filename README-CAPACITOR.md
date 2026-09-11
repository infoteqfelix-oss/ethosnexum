# Éthos Nexum — aplicativo Android com Capacitor

Projeto preparado a partir do site do Éthos Nexum para funcionar como aplicativo Android usando Capacitor.

## Identidade
- Nome: Éthos Nexum
- App ID: com.ethosnexum.app
- Versão: 1.0.0
- SDK alvo: 36
- Min SDK: 24

## Estrutura
- `www/` — conteúdo web do aplicativo
- `capacitor.config.ts` — configuração Capacitor
- `android/` — projeto Android nativo
- `resources/` — identidade visual para geração de ícones/splash

## Compilação
Em ambiente com Node.js, Java/Android SDK e Gradle configurados:

```bash
npm install
npx cap sync android
npx cap build android --androidreleasetype APK
```

Para Google Play:

```bash
npx cap build android --androidreleasetype AAB
```

O comando `cap build` oficialmente suporta APK e AAB. O projeto pode ser compilado em uma máquina local ou em um serviço de build na nuvem que suporte Capacitor/Gradle.

## Observação
A pasta `www` é a versão atual do conteúdo web. Alterações futuras no site podem ser copiadas para `www` e sincronizadas com `npx cap sync android`.
