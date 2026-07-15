declare module '@apiverve/dogbreeds' {
  export interface dogbreedsOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface dogbreedsResponse {
    status: string;
    error: string | null;
    data: DogBreedsData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface DogBreedsData {
      breed:       null | string;
      foundCount:  number | null;
      foundBreeds: FoundBreed[];
  }
  
  interface FoundBreed {
      name:     null | string;
      weight:   Weight;
      height:   Height;
      bredFor:  null | string;
      group:    null | string;
      lifeSpan: LifeSpan;
      traits:   (null | string)[];
  }
  
  interface Height {
      lowerInches: number | null;
      upperInches: number | null;
  }
  
  interface LifeSpan {
      lowerYears: number | null;
      upperYears: number | null;
  }
  
  interface Weight {
      lowerLbs: number | null;
      upperLbs: number | null;
  }

  export default class dogbreedsWrapper {
    constructor(options: dogbreedsOptions);

    execute(callback: (error: any, data: dogbreedsResponse | null) => void): Promise<dogbreedsResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: dogbreedsResponse | null) => void): Promise<dogbreedsResponse>;
    execute(query?: Record<string, any>): Promise<dogbreedsResponse>;
  }
}
